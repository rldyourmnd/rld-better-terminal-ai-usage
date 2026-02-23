# Scripts Layout

This directory is organized by operating system.

## Canonical Implementations

- Linux: `scripts/linux/`
- macOS: `scripts/macos/`
- Windows: `scripts/windows/`

## Dispatchers

- `scripts/install.sh` dispatches by OS.
- `scripts/health-check.sh` dispatches by OS.

## Compatibility Wrappers

Legacy Linux entrypoints are preserved in `scripts/` and forward to `scripts/linux/*`:

- `scripts/install-foundation.sh`
- `scripts/install-layer-1.sh` ... `scripts/install-layer-5.sh`
- `scripts/install-nerd-fonts.sh`

Use canonical `scripts/linux/*` paths for new automation.
