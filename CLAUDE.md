# CLAUDE.md - Better AI Terminal Environment

<!-- Memory Metadata
Last updated: 2026-02-21
Last commit: dbba71c docs: add comprehensive context directory with research data
Scope: Project-wide
Area: CORE
-->

## Project Overview

A 5-layer terminal environment configuration system optimized for AI agent workflows. Transforms a standard Linux terminal into a GPU-accelerated, minimal-latency environment with ~30ms shell startup (30x faster than typical setups).

**Platform**: Linux (Ubuntu/Debian, apt-based)
**Goal**: Maximum optimization for AI-assisted development (claude, gemini, codex CLIs)

## Architecture

```
LAYER 5: AI ORCHESTRATION (user-provided)
    claude CLI | gemini CLI | codex CLI
    ↓
LAYER 4: CODE INTELLIGENCE
    grepai (88.4) | ast-grep (78.7) | probe | semgrep (70.4) | ctags | tokei
    ↓
LAYER 3: GITHUB & GIT
    gh CLI (83.2) | lazygit (46) | delta
    ↓
LAYER 2: PRODUCTIVITY
    fzf (85.4) | zoxide (39.7) | Atuin (68.5) | uv (91.4) | bun (85) | watchexec | glow (76.1) | bottom
    ↓
LAYER 1: FILE OPERATIONS
    bat (91.8) | fd (86.1) | rg (81) | sd (90.8) | jq (85.7) | yq (96.4) | eza
    ↓
FOUNDATION: WezTerm + Fish + Starship
    WebGPU/Vulkan GPU acceleration, ~30ms shell startup, <5ms input latency
```

## Key Directories

| Directory | Purpose |
|-----------|---------|
| `configs/` | Configuration files (fish, starship, wezterm) |
| `docs/layers/` | Layer-specific documentation |
| `docs/foundation/` | Foundation component docs (TODO: create) |
| `context/` | Research data, Context7 scores, benchmarks |
| `scripts/` | Installation scripts |
| `.serena/memories/` | Serena LSP project memories |

## Key Files

| File | Description |
|------|-------------|
| `README.md` | Project overview and quick start |
| `scripts/install.sh` | Main installation script |
| `configs/fish/config.fish` | Fish shell configuration |
| `configs/starship/starship.toml` | Starship prompt configuration |
| `configs/wezterm/wezterm.lua` | WezTerm terminal configuration |
| `context/context7-scores.md` | Tool benchmark scores |

## Installation

```bash
# Clone and install
git clone https://github.com/rldyourmnd/rld-better-terminal-ai-usage.git
cd rld-better-terminal-ai-usage
./scripts/install.sh

# Post-install steps
exec fish           # Restart shell
grepai init         # Build embeddings for semantic search
gh auth login       # GitHub CLI authentication
atuin login         # Optional: encrypted history sync
```

## Coding Conventions

### Shell Scripts
```bash
#!/usr/bin/env bash
set -euo pipefail  # Strict mode always

# Logging pattern
log_info() { echo -e "${BLUE}[INFO]${NC} $1"; }
log_success() { echo -e "${GREEN}[SUCCESS]${NC} $1"; }

# Idempotent installation
command_exists() { command -v "$1" &> /dev/null; }
if ! command_exists tool; then
    # install
fi
```

### Configuration Files
- Visual section separators: `# ═════════════════════════════════════════`
- Performance metrics in headers: `# Performance: ~30ms startup`
- Inline comments for non-obvious settings

### Fish Shell
- Tool init pattern: `tool init fish | source`
- Abbreviations: `abbr -a shortcut 'command'`
- Functions: `function name; ...; end`

### WezTerm Lua
- Module-style config: `wezterm.config_builder()`
- Keybinding pattern: `{ key, mods, action }`

## Tool Selection Criteria

All tools selected based on Context7 benchmark scores (0-100 scale):
- Score > 80: Preferred choice
- Score 70-80: Good alternative
- Score < 70: Use if specific features needed

## Performance Targets

| Metric | Target | Current |
|--------|--------|---------|
| Shell startup | <50ms | ~30ms |
| Prompt render | <10ms | <5ms |
| Input latency | <10ms | <5ms |
| Terminal startup | <100ms | 50-80ms |

## Layer 5: AI Tools (User-Provided)

These CLIs are NOT installed by this project but the environment is optimized for them:

| Tool | Provider | Usage |
|------|----------|-------|
| claude CLI | Anthropic | `claude "prompt"` - Deep reasoning |
| gemini CLI | Google | `gemini -p "prompt"` - Fast research |
| codex CLI | OpenAI | `codex exec "prompt"` - Code generation |

## Serena Memories

| Memory | Content |
|--------|---------|
| CORE_00_overview.md | Project overview, architecture, benchmarks |
| CORE_01_layers.md | Detailed 5-layer architecture |
| FRONTEND_00_terminal.md | WezTerm/Fish/Starship configuration |
| INFRA_00_installation.md | Installation process and scripts |

## Common Tasks

### Add New Tool
1. Add to appropriate layer in `docs/layers/layer-N-*.md`
2. Add installation to `scripts/install.sh`
3. Update `context/context7-scores.md` with score
4. Update relevant Serena memory

### Update Configuration
1. Edit file in `configs/`
2. Run installation script or copy manually
3. Update Serena memory if pattern changes

### Debug Installation
```bash
# Check what's installed
command -v toolname
which toolname

# Re-run installation
./scripts/install.sh  # Idempotent, skips installed

# Manual config copy
cp configs/fish/config.fish ~/.config/fish/config.fish
```

## Known Issues

1. **Missing layer scripts**: `install-layer-*.sh` referenced in README but not created
2. **Empty docs/foundation**: wezterm.md, fish.md, starship.md not created
3. **bat symlink**: Ubuntu installs as `batcat`, requires symlink to `bat`
4. **grepai init**: Required before semantic search works

## Cross-References

- See `context/context7-scores.md` for all benchmark scores
- See `context/benchmarks.md` for performance comparisons
- See `.serena/memories/` for detailed project knowledge
