# # # # # # # # # # # # # # # # # #
# Duplicate Check - Batch 2026-06-15 #
# # # # # # # # # # # # # # # # # #

## Ergebnis

Die zweite Upload-Runde enthaelt ueberwiegend Dateien, die bereits in der v0.0.2-Struktur enthalten waren.
Sie wurden zur Nachvollziehbarkeit erneut unter `references/original_uploads/20260615-batch2/` gesichert, aber nicht als neue funktionale Duplikat-Skripte unter `scripts/` angelegt.

Neu als funktionaler Safe-Import ergaenzt:

- `scripts/config/shellfarbe_install_safe-v0.0.3.sh`

## Hash-Vergleich

| Neuer Upload | Bereits vorhandene Vergleichsdatei | Gleich? | SHA256 kurz | Entscheidung |
|---|---|---:|---|---|
| `01_flatpak_setup(1).sh` | `01_flatpak_setup.sh` | ja | `6482cc3ccc4dddf8` | exact duplicate |
| `02_setup_github(2).sh` | `02_setup_github(1).sh` | ja | `0738d530b33c9ed8` | exact duplicate of repo variant neowulf-backup; safe script already generic |
| `install_arch_chroot(1).sh` | `install_arch_chroot.sh` | ja | `91bdc39d0d18089e` | exact duplicate |
| `install_arch_proot(1).sh` | `install_arch_proot.sh` | ja | `447c9f036c50b114` | exact duplicate |
| `install_discover_flatpak(1).sh` | `install_discover_flatpak.sh` | ja | `5ecd58174e0f7e70` | exact duplicate |
| `install_nix_home(1).sh` | `install_nix_home.sh` | ja | `3578649ad9488533` | exact duplicate |
| `install_podman_home(1).sh` | `install_podman_home.sh` | ja | `1e9ac3c2c3bbfee1` | exact duplicate |
| `install_retroarch_home(1).sh` | `install_retroarch_home.sh` | ja | `ff3d368fdf9f527a` | exact duplicate |
| `set_deutsch_arch_steamos(1).sh` | `set_deutsch_arch_steamos.sh` | ja | `fbb14fa6370c4055` | exact duplicate |
| `02_setup_github(2).sh` | `02_setup_github.sh` | nein | `0738d530b33c9ed8` | not identical to neowulf-repo variant; both repo targets are already covered by generic safe repo prompt |


## Strukturentscheidung

- Installationsskripte bleiben unter `scripts/install/`.
- Wartungs-/Update-Skripte bleiben unter `scripts/maintenance/`.
- Reparatur-/Locale-Skripte bleiben unter `scripts/fix/`.
- Shell-/Prompt-Farbkonfiguration gehoert nach `scripts/config/`, weil sie `.bashrc`, PS1/PROMPT_COMMAND und User-Konfiguration betrifft.
- `scripts/automization/` bleibt aus Kompatibilitaet erhalten; `scripts/automation/` bleibt als korrekt geschriebener Alias dokumentiert.
