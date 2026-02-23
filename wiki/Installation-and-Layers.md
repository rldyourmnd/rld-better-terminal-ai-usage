# Installation and Layers

## Deterministic Order

1. Foundation: terminal + shell + prompt
2. Layer 1: file operations
3. Layer 2: productivity
4. Layer 3: GitHub + Git workflow
5. Layer 4: code intelligence
6. Layer 5: AI orchestration CLIs

## Entrypoints

| Platform | Full Install | Dry-Run | Health Check |
| --- | --- | --- | --- |
| Linux | `./scripts/install.sh` | `./scripts/install.sh --dry-run` | `./scripts/health-check.sh --summary` |
| macOS | `./scripts/install.sh` or `./scripts/install-macos.sh` | `./scripts/macos/install.sh --dry-run` | `./scripts/health-check-macos.sh --summary` |
| Windows | `.\scripts\install-windows.ps1` | `.\scripts\install-windows.ps1 -DryRun` | `.\scripts\health-check-windows.ps1 -Summary` |

## Layer Scripts

### Linux

- `scripts/install-foundation.sh`
- `scripts/install-layer-1.sh`
- `scripts/install-layer-2.sh`
- `scripts/install-layer-3.sh`
- `scripts/install-layer-4.sh`
- `scripts/install-layer-5.sh`

### macOS

- `scripts/macos/install-foundation.sh`
- `scripts/macos/install-layer-1.sh`
- `scripts/macos/install-layer-2.sh`
- `scripts/macos/install-layer-3.sh`
- `scripts/macos/install-layer-4.sh`
- `scripts/macos/install-layer-5.sh`

### Windows

- `scripts/windows/install-foundation.ps1`
- `scripts/windows/install-layer-1.ps1`
- `scripts/windows/install-layer-2.ps1`
- `scripts/windows/install-layer-3.ps1`
- `scripts/windows/install-layer-4.ps1`
- `scripts/windows/install-layer-5.ps1`

## Rerun Rules

- Installers are idempotent-oriented and can be rerun.
- If one layer fails, fix prerequisites and rerun only that layer.
- Always re-run health checks after remediation.

## Canonical References

- Layer docs: <https://github.com/rldyourmnd/rld-better-terminal-ai-usage/tree/main/docs/layers>
- Foundation docs: <https://github.com/rldyourmnd/rld-better-terminal-ai-usage/blob/main/docs/foundation/foundation.md>
