#!/usr/bin/env python3
"""
Dr.Debug Global Research Loop Agent

Version: 0.1.0
Status: PROPOSAL_ONLY
Default mode: dry-run
Apply boundary: writes local proposal artifacts only when --apply is set.

Purpose
-------
Act as a global electronics, repair, embedded-systems, hardware, software,
operating-system, firmware, tooling, package, and technical-systems research agent
for Dr.Debug.

The agent is designed to keep researching every known technical topic as a
source-backed relation graph, from basic electronic components to complex systems:

- passive components: resistor, capacitor, inductor, transformer, fuse, connector
- active components: diode, LED, transistor, MOSFET, regulator, optocoupler
- ICs and soldered chips: CPU, GPU, RAM, ROM, flash, EEPROM, PMIC, Southbridge,
  Northbridge, SoC, MCU, ASIC, FPGA, audio codec, Wi-Fi/BT module, Ethernet PHY,
  HDMI/DisplayPort retimer, USB controller, storage controller, security chip
- consoles and boards: every visible/soldered component, board revision, IC marking,
  package type, pinout, datasheet relation, failure mode, diagnostic path
- computers and devices: motherboard, laptop, phone, router, printer, textile printer,
  industrial controller, appliance, storage device, display, PSU
- code and software: source repositories, package metadata, dependencies, build systems,
  drivers, firmware metadata, operating-system components, boot flows, logs, protocols
- repair knowledge: symptoms, signatures, diagnostic commands, safe tests, expected
  outputs, danger level, rollback, prevention, and validation evidence

Research requirements
---------------------
For every technical topic, component, package, device, driver/firmware question,
operating-system feature, protocol, boot path, storage layer, network layer,
circuit, toolchain, dependency chain, or codebase:

1. Research from source-backed documentation first.
2. Prefer official vendor, project, distribution, standards, registry, source repository,
   datasheet, errata, service manual, package page, release notes, and manpage sources.
3. Treat unsupported claims, forum posts, random blogs, scraped catalogs, and user-only
   assertions as low-confidence research seeds unless independently confirmed.
4. Preserve source URLs, source type, retrieval date, evidence level, limitations,
   affected components, repair relevance, danger level, and rollback/prevention notes.
5. Store metadata and relations, not copyrighted fulltext or binary mirrors.
6. Never store secrets, private logs, personal data, serial numbers, credentials, cookies,
   firmware images, package tarballs, ISO mirrors, full manuals, full wiki dumps, or
   unredacted terminal dumps.
7. Mark repair procedures as validated only after user-confirmed or tool-confirmed success.

Non-goals / hard blocks
-----------------------
This agent does NOT:
- download binary packages, ISOs, firmware, ROMs, installers, drivers, or vendor tools
- mirror binary repositories
- mirror full manuals, full wiki pages, full books, or full source trees
- bypass robots, auth, paywalls, anti-bot systems, login walls, rate limits, or TOS
- collect personal data or private logs
- perform exploit development, malware generation, credential theft, or destructive repair
- claim a fix is validated without explicit evidence

Output
------
Local proposal files:
- topics.jsonl
- sources.jsonl
- relations.jsonl
- observations.jsonl
- queue.jsonl
- manifest.json
- checkpoint.json
- GLOBAL-RESEARCH-LOOP-SUMMARY.md

Example dry run
---------------
python3 global_research_loop_agent.py \
  --seed-topic resistor \
  --seed-topic CPU \
  --seed-topic GPU \
  --seed-topic RAM \
  --seed-url https://en.wikipedia.org/wiki/Resistor \
  --max-items-per-cycle 10

Example apply
-------------
python3 global_research_loop_agent.py \
  --profile electronics \
  --seed-topic "PlayStation 2 motherboard chips" \
  --seed-topic "CPU GPU RAM VRAM EEPROM PMIC HDMI retimer USB controller" \
  --seed-url https://www.raspberrypi.com/documentation/computers/ \
  --include-link-discovery \
  --output-dir CUSTOMER_MODE/INTAKE/GLOBAL_RESEARCH/global_research_loop_output \
  --apply

Loop mode
---------
python3 global_research_loop_agent.py \
  --profile electronics \
  --profile code \
  --seed-topic resistor \
  --seed-topic capacitor \
  --seed-topic diode transistor MOSFET CPU GPU RAM flash EEPROM firmware driver kernel \
  --include-link-discovery \
  --loop \
  --interval-seconds 3600 \
  --max-cycles 24 \
  --apply
"""

from __future__ import annotations

import argparse
import dataclasses
import hashlib
import html.parser
import json
import mimetypes
import pathlib
import random
import re
import signal
import sys
import time
import urllib.error
import urllib.parse
import urllib.request
from collections import deque
from datetime import datetime, timezone
from typing import Any, Iterable


DEFAULT_USER_AGENT = (
    "DrDebugGlobalResearchLoopAgent/0.1 "
    "(metadata-relations only; no binaries; no fulltext mirroring)"
)

MAX_TEXT_BYTES_DEFAULT = 2_000_000
MAX_STORED_SNIPPET_CHARS = 480
MAX_TITLE_CHARS = 180

BINARY_EXTENSIONS_BLOCKLIST = {
    ".7z", ".apk", ".appimage", ".bin", ".cab", ".deb", ".dmg", ".dll", ".drv",
    ".efi", ".exe", ".fd", ".img", ".iso", ".jar", ".ko", ".msi", ".pkg",
    ".pkg.tar.zst", ".raw", ".rom", ".rpm", ".sys", ".tar", ".tar.gz",
    ".tar.xz", ".tar.zst", ".tgz", ".vdi", ".vhd", ".vhdx", ".zip",
}

FULLTEXT_LIKE_EXTENSIONS = {
    ".pdf", ".epub", ".djvu", ".mobi",
}

TEXT_EXTENSIONS_ALLOWLIST = {
    "", ".html", ".htm", ".txt", ".md", ".rst", ".json", ".xml", ".csv",
    ".yaml", ".yml", ".c", ".h", ".cpp", ".hpp", ".py", ".sh", ".rs",
    ".go", ".js", ".ts", ".java", ".kt", ".swift", ".cs", ".toml",
}

STOP_REQUESTED = False


def _handle_signal(signum: int, frame: object) -> None:
    global STOP_REQUESTED
    STOP_REQUESTED = True
    print(f"signal received: {signum}; will stop after current item", file=sys.stderr)


signal.signal(signal.SIGINT, _handle_signal)
signal.signal(signal.SIGTERM, _handle_signal)


def utc_now() -> str:
    return datetime.now(timezone.utc).replace(microsecond=0).isoformat()


def utc_date() -> str:
    return datetime.now(timezone.utc).date().isoformat()


def sha256_text(text: str) -> str:
    return hashlib.sha256(text.encode("utf-8", errors="replace")).hexdigest()


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def safe_slug(value: str) -> str:
    value = value.strip().lower()
    value = value.replace("+", "plus")
    value = re.sub(r"[^a-z0-9._-]+", "-", value)
    value = re.sub(r"-{2,}", "-", value).strip("-")
    return value or "unknown"


def relation_id(subject: str, relation_type: str, obj: str) -> str:
    raw = f"{subject}|{relation_type}|{obj}"
    return "REL-" + hashlib.sha256(raw.encode("utf-8", errors="replace")).hexdigest()[:24]


def record_id(prefix: str, raw: str) -> str:
    return prefix + "-" + hashlib.sha256(raw.encode("utf-8", errors="replace")).hexdigest()[:24]


def normalize_space(text: str) -> str:
    return " ".join(text.split())


def truncate(text: str | None, limit: int) -> str | None:
    if text is None:
        return None
    text = normalize_space(text)
    return text[: limit - 1] + "…" if len(text) > limit else text


def is_safe_reference_url(url: str | None) -> bool:
    if not url:
        return False
    parsed = urllib.parse.urlparse(url)
    return parsed.scheme in {"http", "https"} and bool(parsed.netloc)


def url_extension(url: str) -> str:
    path = urllib.parse.urlparse(url).path.lower()
    for ext in sorted(BINARY_EXTENSIONS_BLOCKLIST | FULLTEXT_LIKE_EXTENSIONS, key=len, reverse=True):
        if path.endswith(ext):
            return ext
    suffix = pathlib.PurePosixPath(path).suffix.lower()
    return suffix


def is_binary_or_fulltext_download_url(url: str) -> bool:
    ext = url_extension(url)
    if ext in BINARY_EXTENSIONS_BLOCKLIST:
        return True
    if ext in FULLTEXT_LIKE_EXTENSIONS:
        return True
    return False


def is_fetchable_text_reference(url: str) -> bool:
    if not is_safe_reference_url(url):
        return False
    if is_binary_or_fulltext_download_url(url):
        return False
    ext = url_extension(url)
    return ext in TEXT_EXTENSIONS_ALLOWLIST or ext == ""


def source_priority_for_url(url: str) -> tuple[str, str, str]:
    """
    Return source_type, evidence_level, limitations based on URL heuristics.
    This is intentionally conservative and can be refined by reviewed rules.
    """
    host = urllib.parse.urlparse(url).netloc.lower()

    official_patterns = [
        "docs.", "documentation.", "developer.", "learn.microsoft.com",
        "kernel.org", "man7.org", "freedesktop.org", "gnu.org",
        "python.org", "rust-lang.org", "golang.org", "nodejs.org",
        "archlinux.org", "debian.org", "ubuntu.com", "fedoraproject.org",
        "raspberrypi.com", "intel.com", "amd.com", "nvidia.com",
        "ti.com", "st.com", "st.com", "microchip.com", "nxp.com",
        "infineon.com", "renesas.com", "analog.com", "onsemi.com",
        "vishay.com", "murata.com", "tdk.com", "kioxia.com",
        "micron.com", "samsung.com", "hynix.com", "jedec.org",
        "usb.org", "pcisig.com", "ieee.org", "ietf.org",
    ]

    if any(p in host for p in official_patterns):
        return "official_or_primary_source", "E3", "Heuristic official/primary source classification; review before canonical promotion."

    if "github.com" in host or "gitlab." in host or host.endswith("gitlab.com"):
        return "source_repository", "E3", "Source repository metadata; inspect project ownership before canonical promotion."

    if "wikipedia.org" in host:
        return "encyclopedia_secondary_source", "E2", "Secondary overview source; use as discovery seed, not final canonical evidence."

    if "wiki" in host or "forum" in host or "reddit" in host:
        return "community_source", "E2", "Community/discussion source; treat as low-confidence until confirmed."

    return "web_source", "E2", "Generic web source; classify manually before canonical promotion."


TECH_TAXONOMY: dict[str, list[str]] = {
    "passive_component": [
        "resistor", "capacitor", "inductor", "transformer", "fuse", "connector",
        "crystal", "oscillator", "antenna", "potentiometer", "thermistor", "varistor",
    ],
    "semiconductor": [
        "diode", "led", "zener", "transistor", "bjt", "mosfet", "igbt",
        "regulator", "ldo", "op-amp", "comparator", "optocoupler",
    ],
    "integrated_circuit": [
        "cpu", "gpu", "apu", "ram", "dram", "sram", "vram", "rom", "eprom",
        "eeprom", "flash", "nand", "nor", "pmic", "soc", "mcu", "asic", "fpga",
        "southbridge", "northbridge", "audio codec", "ethernet phy", "retimer",
        "usb controller", "hdmi", "displayport", "storage controller", "security chip",
    ],
    "board_and_console": [
        "motherboard", "mainboard", "pcb", "board revision", "console", "playstation",
        "xbox", "nintendo", "switch", "wii", "gamecube", "dreamcast", "saturn",
        "ic marking", "pinout", "bga", "qfp", "qfn", "soic", "tsop",
    ],
    "software_and_code": [
        "source code", "repository", "compiler", "toolchain", "build system",
        "dependency", "package", "driver", "kernel", "module", "firmware",
        "bootloader", "initramfs", "service", "daemon", "api", "protocol",
    ],
    "repair_signal": [
        "error", "failure", "fault", "short", "open circuit", "no power",
        "overcurrent", "overheating", "boot loop", "black screen", "artifacting",
        "corruption", "timeout", "crash", "panic", "segfault", "log",
    ],
    "measurement": [
        "voltage", "current", "resistance", "continuity", "oscilloscope",
        "logic analyzer", "multimeter", "thermal camera", "datasheet", "errata",
    ],
}


def classify_topic(text: str) -> list[str]:
    lowered = text.lower()
    classes: list[str] = []
    for category, terms in TECH_TAXONOMY.items():
        if any(term in lowered for term in terms):
            classes.append(category)
    return classes or ["technical_topic"]


@dataclasses.dataclass
class TopicRecord:
    id: str
    title: str
    normalized_topic: str
    categories: list[str]
    source_url: str | None
    source_type: str | None
    source_status: str
    evidence_level: str
    last_checked_date: str
    repair_relevance: str
    affected_components: list[str]
    danger_level: str
    rollback_or_prevention: str
    limitations: str
    canonical_status: str


@dataclasses.dataclass
class SourceRecord:
    id: str
    url: str
    title: str | None
    source_type: str
    source_status: str
    retrieved_at: str
    evidence_level: str
    sha256_of_metadata: str | None
    content_type: str | None
    byte_count: int | None
    limitations: str


@dataclasses.dataclass
class RelationRecord:
    id: str
    subject_type: str
    subject: str
    relation_type: str
    object_type: str
    object_value: str
    source_url: str | None
    evidence_level: str
    source_status: str
    last_checked_date: str
    limitations: str


@dataclasses.dataclass
class ObservationRecord:
    id: str
    topic: str
    source_url: str | None
    observation_type: str
    value: str
    evidence_level: str
    source_status: str
    last_checked_date: str
    limitations: str


@dataclasses.dataclass
class QueueItem:
    id: str
    item_type: str
    value: str
    depth: int
    source_url: str | None
    reason: str
    created_at: str
    status: str = "queued"


class TitleAndLinkExtractor(html.parser.HTMLParser):
    def __init__(self) -> None:
        super().__init__()
        self.title_parts: list[str] = []
        self.links: list[tuple[str, str]] = []
        self.meta_description: str | None = None
        self._in_title = False
        self._href: str | None = None
        self._text_parts: list[str] = []

    def handle_starttag(self, tag: str, attrs: list[tuple[str, str | None]]) -> None:
        tag_l = tag.lower()
        attrs_map = dict(attrs)

        if tag_l == "title":
            self._in_title = True

        if tag_l == "meta":
            name = (attrs_map.get("name") or attrs_map.get("property") or "").lower()
            if name in {"description", "og:description"} and attrs_map.get("content"):
                self.meta_description = attrs_map.get("content")

        if tag_l == "a":
            self._href = attrs_map.get("href")
            self._text_parts = []

    def handle_data(self, data: str) -> None:
        if self._in_title:
            self.title_parts.append(data)
        if self._href is not None:
            self._text_parts.append(data)

    def handle_endtag(self, tag: str) -> None:
        tag_l = tag.lower()
        if tag_l == "title":
            self._in_title = False
        if tag_l == "a" and self._href is not None:
            text = truncate(" ".join("".join(self._text_parts).split()), 160) or ""
            self.links.append((text, self._href))
            self._href = None
            self._text_parts = []

    @property
    def title(self) -> str | None:
        title = truncate(" ".join("".join(self.title_parts).split()), MAX_TITLE_CHARS)
        return title or None


class HttpClient:
    def __init__(
        self,
        user_agent: str,
        timeout: int,
        min_delay_seconds: float,
        max_retries: int,
        retry_backoff_seconds: float,
        max_text_bytes: int,
    ) -> None:
        self.user_agent = user_agent
        self.timeout = timeout
        self.min_delay_seconds = min_delay_seconds
        self.max_retries = max_retries
        self.retry_backoff_seconds = retry_backoff_seconds
        self.max_text_bytes = max_text_bytes
        self._last_request_at = 0.0

    def _throttle(self) -> None:
        elapsed = time.time() - self._last_request_at
        delay = max(0.0, self.min_delay_seconds - elapsed)
        if delay:
            time.sleep(delay)

    def fetch_text_with_headers(self, url: str) -> tuple[str, dict[str, str]]:
        if not is_fetchable_text_reference(url):
            raise ValueError(f"blocked non-text or unsafe URL: {url!r}")

        last_error: Exception | None = None

        for attempt in range(1, self.max_retries + 1):
            if STOP_REQUESTED:
                raise KeyboardInterrupt("stop requested")

            self._throttle()
            req = urllib.request.Request(
                url,
                headers={
                    "User-Agent": self.user_agent,
                    "Accept": "text/html,text/plain,application/json,application/xml,text/markdown;q=0.9,*/*;q=0.5",
                },
            )

            try:
                with urllib.request.urlopen(req, timeout=self.timeout) as response:
                    self._last_request_at = time.time()
                    content_type = response.headers.get("Content-Type", "")
                    raw = response.read(self.max_text_bytes + 1)
                    if len(raw) > self.max_text_bytes:
                        raw = raw[: self.max_text_bytes]
                    text = raw.decode("utf-8", errors="replace")
                    headers = {k: v for k, v in response.headers.items()}
                    headers["Content-Type"] = content_type
                    headers["Fetched-Bytes"] = str(len(raw))
                    return text, headers
            except urllib.error.HTTPError as e:
                self._last_request_at = time.time()
                last_error = e
                if e.code in {403, 404, 410}:
                    raise
                time.sleep(self.retry_backoff_seconds * attempt + random.uniform(0, 0.25))
            except Exception as e:
                self._last_request_at = time.time()
                last_error = e
                time.sleep(self.retry_backoff_seconds * attempt + random.uniform(0, 0.25))

        assert last_error is not None
        raise last_error


class JsonlWriter:
    def __init__(self, path: pathlib.Path, apply: bool) -> None:
        self.path = path
        self.apply = apply
        self.path.parent.mkdir(parents=True, exist_ok=True)

    def append(self, row: Any) -> None:
        if dataclasses.is_dataclass(row):
            row = dataclasses.asdict(row)
        line = json.dumps(row, ensure_ascii=False, sort_keys=True)
        if not self.apply:
            print(f"[dry-run jsonl] {self.path}: {line[:240]}", file=sys.stderr)
            return
        with self.path.open("a", encoding="utf-8") as f:
            f.write(line + "\n")


class StateStore:
    def __init__(self, path: pathlib.Path, apply: bool) -> None:
        self.path = path
        self.apply = apply
        self.path.parent.mkdir(parents=True, exist_ok=True)
        self.state: dict[str, Any] = {
            "created_at": utc_now(),
            "updated_at": utc_now(),
            "seen_topics": [],
            "seen_urls": [],
            "cycles_completed": 0,
            "last_error": None,
        }
        if path.exists():
            try:
                self.state.update(json.loads(path.read_text(encoding="utf-8")))
            except Exception as e:
                print(f"checkpoint read failed; starting fresh: {e}", file=sys.stderr)

    @property
    def seen_topics(self) -> set[str]:
        return set(str(x) for x in self.state.get("seen_topics", []))

    @property
    def seen_urls(self) -> set[str]:
        return set(str(x) for x in self.state.get("seen_urls", []))

    def mark_topic(self, topic: str) -> None:
        seen = self.seen_topics
        seen.add(topic)
        self.state["seen_topics"] = sorted(seen)
        self.state["updated_at"] = utc_now()
        self.save()

    def mark_url(self, url: str) -> None:
        seen = self.seen_urls
        seen.add(url)
        self.state["seen_urls"] = sorted(seen)
        self.state["updated_at"] = utc_now()
        self.save()

    def set_error(self, error: str | None) -> None:
        self.state["last_error"] = error
        self.state["updated_at"] = utc_now()
        self.save()

    def increment_cycle(self) -> None:
        self.state["cycles_completed"] = int(self.state.get("cycles_completed", 0)) + 1
        self.state["updated_at"] = utc_now()
        self.save()

    def save(self) -> None:
        if not self.apply:
            return
        self.path.write_text(json.dumps(self.state, ensure_ascii=False, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def topic_record_for(topic: str, source_url: str | None = None, source_type: str | None = None) -> TopicRecord:
    categories = classify_topic(topic)
    return TopicRecord(
        id="TOPIC-" + safe_slug(topic).upper()[:80],
        title=topic,
        normalized_topic=safe_slug(topic),
        categories=categories,
        source_url=source_url,
        source_type=source_type,
        source_status="seed_or_discovered",
        evidence_level="E1" if not source_url else "E2",
        last_checked_date=utc_date(),
        repair_relevance=(
            "Research seed for electronics, hardware, software, code, firmware, package, "
            "device, or repair relation graph."
        ),
        affected_components=categories,
        danger_level="LOW for metadata research; repair actions require separate platform gate.",
        rollback_or_prevention="Store source-backed metadata only; validate repair steps separately.",
        limitations="Seed topic only until confirmed by primary sources.",
        canonical_status="PROPOSAL_ONLY",
    )


def source_and_observations_from_url(
    url: str,
    text: str,
    headers: dict[str, str],
) -> tuple[SourceRecord, list[ObservationRecord], list[tuple[str, str]]]:
    source_type, evidence_level, limitations = source_priority_for_url(url)

    extractor = TitleAndLinkExtractor()
    lower_text = text.lower()
    links: list[tuple[str, str]] = []

    if "<html" in lower_text or "<!doctype html" in lower_text:
        try:
            extractor.feed(text)
            links = extractor.links
        except Exception:
            links = []
    else:
        # Basic URL discovery in text/code; metadata only.
        links = [("", m.group(0)) for m in re.finditer(r"https?://[^\s)>\]\"']+", text)]

    title = extractor.title
    desc = truncate(extractor.meta_description, MAX_STORED_SNIPPET_CHARS)

    source = SourceRecord(
        id=record_id("SRC", url),
        url=url,
        title=title,
        source_type=source_type,
        source_status="retrieved_metadata_only",
        retrieved_at=utc_now(),
        evidence_level=evidence_level,
        sha256_of_metadata=sha256_text(text),
        content_type=headers.get("Content-Type"),
        byte_count=int(headers.get("Fetched-Bytes", "0") or 0),
        limitations=limitations + " Fulltext is not stored; only metadata, hash, title, and limited observations.",
    )

    observations: list[ObservationRecord] = []
    if title:
        observations.append(
            ObservationRecord(
                id=record_id("OBS", url + "|title|" + title),
                topic=title,
                source_url=url,
                observation_type="title",
                value=title,
                evidence_level=evidence_level,
                source_status="retrieved_metadata_only",
                last_checked_date=utc_date(),
                limitations="Title only; not a fulltext copy.",
            )
        )

    if desc:
        observations.append(
            ObservationRecord(
                id=record_id("OBS", url + "|description|" + desc),
                topic=title or url,
                source_url=url,
                observation_type="meta_description",
                value=desc,
                evidence_level=evidence_level,
                source_status="retrieved_metadata_only",
                last_checked_date=utc_date(),
                limitations="Short metadata description only; not a fulltext copy.",
            )
        )

    # Extract limited technical keywords as observations.
    for category, terms in TECH_TAXONOMY.items():
        matched = [term for term in terms if term in lower_text]
        if matched:
            value = ", ".join(sorted(set(matched))[:30])
            observations.append(
                ObservationRecord(
                    id=record_id("OBS", url + "|" + category + "|" + value),
                    topic=title or url,
                    source_url=url,
                    observation_type=f"matched_{category}",
                    value=value,
                    evidence_level=evidence_level,
                    source_status="retrieved_metadata_only",
                    last_checked_date=utc_date(),
                    limitations="Keyword-level relation only; review source before canonical use.",
                )
            )

    return source, observations, links


def relations_from_source(url: str, source: SourceRecord, observations: list[ObservationRecord]) -> list[RelationRecord]:
    rels: list[RelationRecord] = []

    for obs in observations:
        rels.append(
            RelationRecord(
                id=relation_id(source.id, "has_observation", obs.id),
                subject_type="source",
                subject=url,
                relation_type="has_observation",
                object_type="observation",
                object_value=obs.id,
                source_url=url,
                evidence_level=source.evidence_level,
                source_status=source.source_status,
                last_checked_date=utc_date(),
                limitations="Observation relation only; not canonical repair truth.",
            )
        )

    return rels


def discover_queue_items_from_links(
    base_url: str,
    links: list[tuple[str, str]],
    current_depth: int,
    max_depth: int,
    same_domain_only: bool,
) -> list[QueueItem]:
    out: list[QueueItem] = []
    base_host = urllib.parse.urlparse(base_url).netloc.lower()

    for text, href in links:
        abs_url = absolute_url(base_url, href)
        if not abs_url or not is_safe_reference_url(abs_url):
            continue
        if is_binary_or_fulltext_download_url(abs_url):
            continue
        if same_domain_only and urllib.parse.urlparse(abs_url).netloc.lower() != base_host:
            continue
        if current_depth + 1 > max_depth:
            continue

        label = text or abs_url
        label_l = label.lower()
        url_l = abs_url.lower()

        if not any(term in (label_l + " " + url_l) for terms in TECH_TAXONOMY.values() for term in terms):
            # Keep discovery focused. This avoids generic web crawling.
            continue

        out.append(
            QueueItem(
                id=record_id("QUEUE", abs_url),
                item_type="url",
                value=abs_url,
                depth=current_depth + 1,
                source_url=base_url,
                reason=f"technical link discovery: {truncate(label, 120) or 'url'}",
                created_at=utc_now(),
            )
        )

    return out


def profile_seed_topics(profiles: list[str]) -> list[str]:
    seeds: list[str] = []

    for profile in profiles:
        p = profile.lower().strip()

        if p in {"electronics", "electronic", "hardware"}:
            seeds.extend(
                [
                    "resistor capacitor inductor diode transistor MOSFET fuse connector",
                    "CPU GPU RAM ROM flash EEPROM PMIC SoC MCU ASIC FPGA",
                    "PCB board revision IC marking package type pinout datasheet errata",
                    "short circuit no power overcurrent overheating boot loop black screen",
                ]
            )
        elif p in {"console", "consoles", "game-console"}:
            seeds.extend(
                [
                    "game console motherboard soldered chips CPU GPU RAM flash PMIC southbridge",
                    "PlayStation Xbox Nintendo console board revision IC marking repair",
                    "HDMI retimer USB controller Wi-Fi Bluetooth module audio codec storage controller",
                ]
            )
        elif p in {"code", "software"}:
            seeds.extend(
                [
                    "source code repository build system dependency package driver kernel firmware",
                    "compiler toolchain API protocol service daemon bootloader initramfs",
                ]
            )
        elif p in {"repair", "diagnostic"}:
            seeds.extend(
                [
                    "repair diagnostic command expected output rollback prevention validation",
                    "failure signature log error code safe test measurement continuity voltage current",
                ]
            )
        elif p in {"os", "operating-system"}:
            seeds.extend(
                [
                    "operating system package manager driver service bootloader kernel module logs",
                    "Linux Windows macOS BSD Android recovery firmware update boot process",
                ]
            )
        else:
            seeds.append(profile)

    return seeds


def build_initial_queue(args: argparse.Namespace) -> deque[QueueItem]:
    items: deque[QueueItem] = deque()

    seed_topics: list[str] = []
    seed_topics.extend(profile_seed_topics(args.profile or []))
    seed_topics.extend(args.seed_topic or [])

    for topic in seed_topics:
        items.append(
            QueueItem(
                id=record_id("QUEUE", "topic|" + topic),
                item_type="topic",
                value=topic,
                depth=0,
                source_url=None,
                reason="user/profile seed topic",
                created_at=utc_now(),
            )
        )

    for url in args.seed_url or []:
        items.append(
            QueueItem(
                id=record_id("QUEUE", "url|" + url),
                item_type="url",
                value=url,
                depth=0,
                source_url=None,
                reason="user seed url",
                created_at=utc_now(),
            )
        )

    return items


def write_summary(path: pathlib.Path, topics: list[TopicRecord], sources: list[SourceRecord], apply: bool) -> None:
    lines = [
        "---",
        "id: GLOBAL-RESEARCH-LOOP-SUMMARY",
        f"updated_at: {utc_now()}",
        "status: PROPOSAL_ONLY",
        "canonical_status: PROPOSAL_ONLY",
        "validation_status: METADATA_ONLY",
        "redaction_status: clean; no binaries, no full manuals, no full wiki pages, no private data",
        "---",
        "",
        "# Global research loop summary",
        "",
        "This summary contains topic/source metadata only.",
        "",
        "## Topics",
        "",
        "| topic | categories | evidence | source |",
        "|---|---|---|---|",
    ]

    for t in topics[-500:]:
        lines.append(
            "| "
            + " | ".join(
                [
                    t.title.replace("|", "\\|"),
                    ", ".join(t.categories).replace("|", "\\|"),
                    t.evidence_level,
                    t.source_url or "",
                ]
            )
            + " |"
        )

    lines.extend(
        [
            "",
            "## Sources",
            "",
            "| title | type | evidence | url |",
            "|---|---|---|---|",
        ]
    )

    for s in sources[-500:]:
        lines.append(
            "| "
            + " | ".join(
                [
                    (s.title or "").replace("|", "\\|"),
                    s.source_type.replace("|", "\\|"),
                    s.evidence_level,
                    s.url,
                ]
            )
            + " |"
        )

    if not apply:
        print(f"[dry-run markdown] {path}: {len(topics)} topics, {len(sources)} sources", file=sys.stderr)
        return

    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")


def process_topic(
    item: QueueItem,
    writers: dict[str, JsonlWriter],
    state: StateStore,
) -> TopicRecord | None:
    topic = normalize_space(item.value)
    key = safe_slug(topic)

    if key in state.seen_topics:
        print(f"skip seen topic: {topic}", file=sys.stderr)
        return None

    record = topic_record_for(topic, source_url=item.source_url)
    writers["topics"].append(record)

    # Create relation records from topic categories.
    for category in record.categories:
        rel = RelationRecord(
            id=relation_id(record.id, "classified_as", category),
            subject_type="topic",
            subject=record.title,
            relation_type="classified_as",
            object_type="technical_category",
            object_value=category,
            source_url=item.source_url,
            evidence_level=record.evidence_level,
            source_status=record.source_status,
            last_checked_date=utc_date(),
            limitations="Automatic keyword classification; review before canonical promotion.",
        )
        writers["relations"].append(rel)

    state.mark_topic(key)
    return record


def process_url(
    item: QueueItem,
    http: HttpClient,
    writers: dict[str, JsonlWriter],
    state: StateStore,
    include_link_discovery: bool,
    max_depth: int,
    same_domain_only: bool,
) -> tuple[SourceRecord | None, list[QueueItem]]:
    url = item.value

    if url in state.seen_urls:
        print(f"skip seen url: {url}", file=sys.stderr)
        return None, []

    if not is_fetchable_text_reference(url):
        source_type, evidence_level, limitations = source_priority_for_url(url)
        source = SourceRecord(
            id=record_id("SRC", url),
            url=url,
            title=None,
            source_type=source_type,
            source_status="reference_only_blocked_download_or_nontext",
            retrieved_at=utc_now(),
            evidence_level=evidence_level,
            sha256_of_metadata=None,
            content_type=None,
            byte_count=None,
            limitations=limitations + " URL stored as relation only; content not fetched.",
        )
        writers["sources"].append(source)
        state.mark_url(url)
        return source, []

    try:
        text, headers = http.fetch_text_with_headers(url)
        source, observations, links = source_and_observations_from_url(url, text, headers)
        writers["sources"].append(source)
        for obs in observations:
            writers["observations"].append(obs)
        for rel in relations_from_source(url, source, observations):
            writers["relations"].append(rel)

        discovered: list[QueueItem] = []
        if include_link_discovery:
            discovered = discover_queue_items_from_links(
                base_url=url,
                links=links,
                current_depth=item.depth,
                max_depth=max_depth,
                same_domain_only=same_domain_only,
            )
            for q in discovered:
                writers["queue"].append(q)

        state.mark_url(url)
        return source, discovered

    except urllib.error.HTTPError as e:
        source_type, evidence_level, limitations = source_priority_for_url(url)
        source = SourceRecord(
            id=record_id("SRC", url),
            url=url,
            title=None,
            source_type=source_type,
            source_status=f"http_error_{e.code}",
            retrieved_at=utc_now(),
            evidence_level="E1",
            sha256_of_metadata=None,
            content_type=None,
            byte_count=None,
            limitations=limitations + " Retrieval failed; no bypass attempted.",
        )
        writers["sources"].append(source)
        state.mark_url(url)
        return source, []
    except Exception as e:
        source_type, evidence_level, limitations = source_priority_for_url(url)
        source = SourceRecord(
            id=record_id("SRC", url),
            url=url,
            title=None,
            source_type=source_type,
            source_status=f"error:{type(e).__name__}",
            retrieved_at=utc_now(),
            evidence_level="E1",
            sha256_of_metadata=None,
            content_type=None,
            byte_count=None,
            limitations=limitations + f" Retrieval failed: {truncate(str(e), 160)}",
        )
        writers["sources"].append(source)
        state.mark_url(url)
        return source, []


def run_cycle(args: argparse.Namespace, http: HttpClient, out_dir: pathlib.Path, state: StateStore) -> tuple[list[TopicRecord], list[SourceRecord]]:
    writers = {
        "topics": JsonlWriter(out_dir / "topics.jsonl", apply=args.apply),
        "sources": JsonlWriter(out_dir / "sources.jsonl", apply=args.apply),
        "relations": JsonlWriter(out_dir / "relations.jsonl", apply=args.apply),
        "observations": JsonlWriter(out_dir / "observations.jsonl", apply=args.apply),
        "queue": JsonlWriter(out_dir / "queue.jsonl", apply=args.apply),
    }

    queue = build_initial_queue(args)
    topics: list[TopicRecord] = []
    sources: list[SourceRecord] = []

    processed = 0

    while queue and processed < args.max_items_per_cycle:
        if STOP_REQUESTED:
            break

        item = queue.popleft()
        writers["queue"].append(item)

        if item.item_type == "topic":
            topic = process_topic(item, writers=writers, state=state)
            if topic:
                topics.append(topic)
                processed += 1

        elif item.item_type == "url":
            source, discovered = process_url(
                item,
                http=http,
                writers=writers,
                state=state,
                include_link_discovery=args.include_link_discovery,
                max_depth=args.max_depth,
                same_domain_only=args.same_domain_only,
            )
            if source:
                sources.append(source)
                processed += 1
            for q in discovered:
                queue.append(q)

        else:
            print(f"unknown queue item type: {item.item_type}", file=sys.stderr)

    manifest = {
        "id": "GLOBAL-RESEARCH-LOOP-MANIFEST",
        "generated_at": utc_now(),
        "apply": bool(args.apply),
        "output_dir": str(out_dir),
        "profile": args.profile,
        "limits": {
            "metadata_only": True,
            "no_binary_downloads": True,
            "no_iso_downloads": True,
            "no_firmware_downloads": True,
            "no_full_manual_dump": True,
            "no_full_wiki_dump": True,
            "max_items_per_cycle": args.max_items_per_cycle,
            "max_depth": args.max_depth,
            "min_delay_seconds": args.min_delay_seconds,
            "max_text_bytes": args.max_text_bytes,
            "same_domain_only": args.same_domain_only,
        },
        "topics_this_cycle": len(topics),
        "sources_this_cycle": len(sources),
        "checkpoint": str(out_dir / "checkpoint.json"),
        "canonical_status": "PROPOSAL_ONLY",
    }

    if args.apply:
        (out_dir / "manifest.json").write_text(
            json.dumps(manifest, ensure_ascii=False, indent=2, sort_keys=True) + "\n",
            encoding="utf-8",
        )
    else:
        print("[dry-run manifest]", json.dumps(manifest, ensure_ascii=False, indent=2), file=sys.stderr)

    write_summary(out_dir / "GLOBAL-RESEARCH-LOOP-SUMMARY.md", topics, sources, apply=args.apply)
    return topics, sources


def parse_args(argv: list[str]) -> argparse.Namespace:
    p = argparse.ArgumentParser(
        description="Dr.Debug global technical research loop agent",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter,
    )

    p.add_argument("--profile", action="append", default=[], help="Research profile: electronics, console, code, repair, os, or custom seed.")
    p.add_argument("--seed-topic", action="append", default=[], help="Technical topic seed. Repeatable.")
    p.add_argument("--seed-url", action="append", default=[], help="Source URL seed. Repeatable.")

    p.add_argument("--include-link-discovery", action="store_true", help="Discover technical links from fetched HTML/text.")
    p.add_argument("--same-domain-only", action="store_true", help="Only follow discovered links on the same domain.")
    p.add_argument("--max-depth", type=int, default=1, help="Max discovery depth.")
    p.add_argument("--max-items-per-cycle", type=int, default=25, help="Max queue items processed per cycle.")

    p.add_argument("--min-delay-seconds", type=float, default=1.0, help="Minimum delay between HTTP requests.")
    p.add_argument("--max-retries", type=int, default=3, help="HTTP retry count.")
    p.add_argument("--retry-backoff-seconds", type=float, default=2.0, help="Retry backoff base.")
    p.add_argument("--timeout", type=int, default=30, help="HTTP timeout seconds.")
    p.add_argument("--max-text-bytes", type=int, default=MAX_TEXT_BYTES_DEFAULT, help="Max fetched text bytes per source.")
    p.add_argument("--user-agent", default=DEFAULT_USER_AGENT, help="HTTP User-Agent.")

    p.add_argument("--output-dir", default="CUSTOMER_MODE/INTAKE/GLOBAL_RESEARCH/global_research_loop_output")
    p.add_argument("--apply", action="store_true", help="Write local proposal artifacts. Without this, dry-run only.")

    p.add_argument("--loop", action="store_true", help="Run repeatedly.")
    p.add_argument("--interval-seconds", type=int, default=3600, help="Sleep between loop cycles.")
    p.add_argument("--max-cycles", type=int, default=1, help="Maximum cycles. Use 0 for unlimited loop.")

    return p.parse_args(argv)


def main(argv: list[str]) -> int:
    args = parse_args(argv)

    if not args.profile and not args.seed_topic and not args.seed_url:
        print("No seeds supplied. Use --profile, --seed-topic, or --seed-url.", file=sys.stderr)
        return 2

    out_dir = pathlib.Path(args.output_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    http = HttpClient(
        user_agent=args.user_agent,
        timeout=args.timeout,
        min_delay_seconds=args.min_delay_seconds,
        max_retries=args.max_retries,
        retry_backoff_seconds=args.retry_backoff_seconds,
        max_text_bytes=args.max_text_bytes,
    )

    state = StateStore(out_dir / "checkpoint.json", apply=args.apply)

    cycle = 0
    while True:
        if STOP_REQUESTED:
            break

        cycle += 1
        print(f"=== global research cycle {cycle} started at {utc_now()} apply={args.apply} ===", file=sys.stderr)

        try:
            run_cycle(args, http=http, out_dir=out_dir, state=state)
            state.increment_cycle()
            state.set_error(None)
        except KeyboardInterrupt:
            break
        except Exception as e:
            state.set_error(str(e))
            print(f"cycle failed: {e}", file=sys.stderr)
            if not args.loop:
                return 1

        if not args.loop:
            break

        if args.max_cycles and cycle >= args.max_cycles:
            break

        sleep_left = args.interval_seconds
        while sleep_left > 0 and not STOP_REQUESTED:
            step = min(5, sleep_left)
            time.sleep(step)
            sleep_left -= step

    print(f"finished at {utc_now()} stop_requested={STOP_REQUESTED}", file=sys.stderr)
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv[1:]))
