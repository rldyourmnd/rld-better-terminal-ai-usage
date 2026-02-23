# Troubleshooting

## Fast Recovery Flow

1. Identify failing platform + layer.
2. Fix prerequisites (network, package manager, PATH, permissions).
3. Rerun only the failing layer.
4. Re-run platform health-check.

## Platform Health Commands

- Linux: `./scripts/health-check.sh --summary`
- macOS: `./scripts/health-check-macos.sh --summary`
- Windows: `.\scripts\health-check-windows.ps1 -Summary`

## Common Failures

### `command not found` after install

- Ensure user-local bin path exists and is exported:
  - Linux/macOS: `$HOME/.local/bin`
  - Windows: `$HOME\.local\bin` and `%APPDATA%\npm`

### Config parity mismatch

- Re-copy templates from `configs/` to user dotfiles.
- Re-run strict health-check.

### Terminal freeze on move/resize (multi-monitor)

- Start with session-aware defaults from repo config:
  - `cp configs/wezterm/wezterm.lua ~/.wezterm.lua`
- Test low-overhead native Wayland mode:
  - `WEZTERM_FORCE_WAYLAND=1 WEZTERM_MINIMAL_UI=1 wezterm start --always-new-process`
- If needed, force X11 path:
  - `WEZTERM_FORCE_X11=1 wezterm start --always-new-process`
- Last-resort renderer fallback:
  - `WEZTERM_SAFE_RENDERER=1 wezterm start --always-new-process`
- Inspect last logs:
  - `journalctl --user -b --since '20 minutes ago' | rg -n "size change accounting|frame counter but no frame drawn time|MetaShapedTexture|update-status event: runtime error"`

### Linux `sg` is not `ast-grep`

- Check `sg --version` output.
- If needed, run `~/.cargo/bin/sg --version` and reinstall ast-grep.

### Global npm permission errors

- Configure user prefix:
  - `npm config set prefix "$HOME/.local"`
  - add `$HOME/.local/bin` to PATH

## Escalation

When unresolved, provide:

- health-check output,
- failing command output,
- platform + shell + package-manager details,
- exact layer/script invoked.

## Canonical Guide

- <https://github.com/rldyourmnd/awesome-terminal-for-ai/blob/main/docs/operations/troubleshooting.md>
