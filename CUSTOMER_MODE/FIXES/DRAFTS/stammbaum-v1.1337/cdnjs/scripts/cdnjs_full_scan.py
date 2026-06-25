#!/usr/bin/env python3
"""
name: cdnjs_full_scan.py
version: 0.1.0-proposal
status: PROPOSAL_ONLY
purpose: Fetch and normalize CDNJS library metadata for Dr.Debug source-record review.
risk: LOW read-only network request; do not store raw dump as canonical memory.
network_required: yes
destructive: no
validation: compare stats count, normalize fields, write review queue JSON.
"""
import json
import urllib.request
from datetime import datetime, timezone

FIELDS = "name,description,version,license,homepage,repository,keywords,filename,sri"
URL = f"https://api.cdnjs.com/libraries?fields={FIELDS}"

def main():
    with urllib.request.urlopen(URL, timeout=30) as response:
        data = json.load(response)
    records = []
    for item in data.get("results", []):
        records.append({
            "name": item.get("name"),
            "version": item.get("version"),
            "description": item.get("description"),
            "license": item.get("license"),
            "homepage": item.get("homepage"),
            "repository": item.get("repository"),
            "keywords": item.get("keywords"),
            "filename": item.get("filename"),
            "sri": item.get("sri"),
            "status": "RESEARCH_ONLY",
            "evidence_level": "E2",
            "canonical": False,
            "retrieved_at": datetime.now(timezone.utc).isoformat(),
        })
    output = {
        "source": URL,
        "total_reported": data.get("total"),
        "available_reported": data.get("available"),
        "records_total": len(records),
        "records": records,
    }
    print(json.dumps(output, ensure_ascii=False, indent=2))

if __name__ == "__main__":
    main()
