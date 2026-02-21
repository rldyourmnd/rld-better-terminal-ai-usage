# Better Terminal Usage

> **High-performance terminal environment for modern development workflows**

## Overview

This repository contains a complete, production-ready terminal configuration optimized for speed and efficiency. Based on extensive research and benchmarking (February 2026), this setup achieves **30x faster** shell startup and **minimal latency** for development workflows.

## Architecture - 4 Layers

```
┌─────────────────────────────────────────────────────────────────────┐
│               HIGH-PERFORMANCE TERMINAL ENVIRONMENT                 │
├─────────────────────────────────────────────────────────────────────┤
│                                                                     │
│  LAYER 4: CODE INTELLIGENCE                                        │
│  ─────────────────────────────                                     │
│  grepai (88.4) | ast-grep (78.7) | probe | semgrep | ctags        │
│  Semantic search, AST-aware editing, security analysis             │
│                                                                     │
│  LAYER 3: GITHUB & GIT                                             │
│  ─────────────────────────────                                     │
│  gh CLI (83.2) | lazygit | delta                                   │
│  Complete GitHub automation, visual git workflow                   │
│                                                                     │
│  LAYER 2: PRODUCTIVITY                                             │
│  ─────────────────────────────                                     │
│  fzf | zoxide | Atuin | uv (91.4) | bun (85) | watchexec | glow   │
│  Fast navigation, history sync, package management                 │
│                                                                     │
│  LAYER 1: FILE OPERATIONS                                          │
│  ─────────────────────────────                                     │
│  bat (91.8) | fd (86.1) | rg (81) | sd (90.8) | jq (85.7) | yq    │
│  10-100x faster than classic Unix tools                            │
│                                                                     │
│  FOUNDATION: WezTerm + Fish + Starship                             │
│  WebGPU/Vulkan GPU acceleration, ~30ms shell startup               │
│                                                                     │
└─────────────────────────────────────────────────────────────────────┘
```

## Performance Benchmarks

| Metric | Before | After | Improvement |
|--------|--------|-------|-------------|
| Shell startup | 915ms | ~30ms | **30x faster** |
| Terminal startup | 300-500ms | 50-80ms | **6x faster** |
| Input latency | ~50ms | <5ms | **10x faster** |
| File search | grep (slow) | rg (81 score) | **10x+ faster** |

## Quick Start

```bash
# Clone repository
git clone https://github.com/rldyourmnd/better-terminal-usage.git
cd better-terminal-usage

# Run full installation
./scripts/install.sh

# Or install layer by layer
./scripts/install-foundation.sh
./scripts/install-layer-1.sh
./scripts/install-layer-2.sh
./scripts/install-layer-3.sh
./scripts/install-layer-4.sh
```

## Layers Detail

### Layer 1: File Operations

Ultra-fast file manipulation tools that replace classic Unix utilities.

| Tool | Score | Replaces | Speed Improvement |
|------|-------|----------|-------------------|
| bat | 91.8 | cat | +syntax highlighting, Git integration |
| fd | 86.1 | find | parallel traversal, smart defaults |
| rg | 81 | grep | respects gitignore, 10x+ faster |
| sd | 90.8 | sed | painless regex, intuitive syntax |
| jq | 85.7 | JSON parsing | powerful filtering |
| yq | 96.4 | YAML/JSON/XML | unified processor |
| eza | - | ls | icons, colors, git status |

### Layer 2: Productivity

Tools that dramatically speed up daily workflows.

| Tool | Score | Purpose |
|------|-------|---------|
| fzf | 85.4 | Fuzzy finder for files, history, commands |
| zoxide | 39.7 | Smart cd with frecency learning |
| Atuin | 68.5 | SQLite history with encrypted sync |
| uv | 91.4 | Python package manager (10-100x faster than pip) |
| bun | 85 | JavaScript runtime (3-10x faster than npm) |
| watchexec | - | Auto-run commands on file changes |
| glow | 76.1 | Markdown renderer for terminal |
| bottom | - | System monitor (htop replacement) |
| hyperfine | - | Command-line benchmarking |

### Layer 3: GitHub & Git

Complete git and GitHub automation without leaving terminal.

| Tool | Score | Purpose |
|------|-------|---------|
| gh CLI | 83.2 | Complete GitHub control in terminal |
| lazygit | 46 | Visual git UI for staging, commits, pushes |
| delta | - | Beautiful git diffs with syntax highlighting |

### Layer 4: Code Intelligence

Advanced code analysis and search tools.

| Tool | Score | Purpose |
|------|-------|---------|
| grepai | 88.4 | Semantic code search with embeddings |
| ast-grep | 78.7 | AST-based structural search and rewrite |
| probe | - | Code block extraction for documentation |
| semgrep | 70.4 | Static analysis for security |
| ctags | - | Code indexing for navigation |
| tokei | - | Code statistics by language |

## Foundation

### Terminal: WezTerm

- WebGPU + Vulkan rendering on GPU
- Built-in multiplexer (no tmux needed)
- local_echo_threshold_ms=10 for minimal latency
- Lua scripting for automation

### Shell: Fish + Starship

- ~30ms startup (vs 915ms before)
- Autosuggestions out of the box
- Web-based configuration
- Cross-shell prompt (Rust, <5ms)

## Directory Structure

```
better-terminal-usage/
├── README.md                   # This file
├── LICENSE                     # MIT License
├── CONTRIBUTING.md             # Contribution guidelines
├── docs/
│   ├── layers/
│   │   ├── layer-1-file-ops.md
│   │   ├── layer-2-productivity.md
│   │   ├── layer-3-github.md
│   │   └── layer-4-code-intelligence.md
│   ├── foundation/
│   │   └── foundation.md
│   └── benchmarks.md
├── configs/
│   ├── wezterm/
│   │   └── wezterm.lua
│   ├── fish/
│   │   └── config.fish
│   └── starship/
│       └── starship.toml
├── scripts/
│   ├── install.sh
│   ├── install-foundation.sh
│   ├── install-layer-1.sh
│   ├── install-layer-2.sh
│   ├── install-layer-3.sh
│   └── install-layer-4.sh
└── context/
    ├── benchmarks.md
    └── tools/
```

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## License

MIT License - see [LICENSE](LICENSE) for details.
