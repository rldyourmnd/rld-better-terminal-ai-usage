# Context7 Benchmark Scores

> All scores from Context7 research - February 2026

## Terminals

| Terminal | Score | Language | GPU | Notes |
|----------|-------|----------|-----|-------|
| **WezTerm** | **91.1** | Rust | WebGPU/Vulkan | WINNER - Built-in multiplexer |
| Wave | 86.2 | Electron | No | AI features, slower |
| Kitty | 80.5 | Python+C | OpenGL | Stable, good Wayland |
| Zellij | 79.4 | Rust | No | Multiplexer only |
| Rio | 69.6 | Rust | WGPU | New, promising |
| Tmux | 62.6 | C | No | Classic multiplexer |
| Alacritty | 37.4 | Rust | OpenGL | Minimal features |
| Warp | 72.1 / 6.5 | Rust | Yes | Proprietary, AI platform |

## Shells

| Shell | Score | POSIX | Startup |
|-------|-------|-------|---------|
| **Fish** | **94.5** | No | ~30ms |
| Xonsh | 86.0 | Yes | ~200ms |
| **Nushell** | **85.0** | No | ~50ms |
| Zsh (base) | 70.9 | Yes | ~20ms |
| PowerShell | 36.0 | No | ~300ms |

## ZSH Frameworks

| Framework | Score | Startup Impact |
|-----------|-------|----------------|
| Oh-My-Zsh | 87.7 | +200-500ms |
| **Zinit** | **87.3** | **-50-80% (Turbo)** |
| Prezto | 73.7 | +100-200ms |

## Prompts

| Prompt | Score | Startup | Cross-shell |
|--------|-------|---------|-------------|
| **Starship** | **80.8** | <5ms | Yes |
| Powerlevel10k | N/A | <5ms+Instant | No (zsh only) |

## File Operations

| Tool | Score | Replaces |
|------|-------|----------|
| **yq** | **96.4** | YAML/JSON/XML processor |
| **bat** | **91.8** | cat |
| **sd** | **90.8** | sed |
| **fd** | **86.1** | find |
| **jq** | **85.7** | JSON processor |
| **ripgrep** | **81** | grep |

## Productivity

| Tool | Score | Purpose |
|------|-------|---------|
| **uv** | **91.4** | Python package manager |
| **bun** | **85.0** | JavaScript runtime |
| **fzf** | **85.4** | Fuzzy finder |
| **hyperfine** | **81.3** | Benchmarking |
| **glow** | **76.1** | Markdown renderer |
| **Atuin** | **68.5** | History sync |

## GitHub & Git

| Tool | Score | Purpose |
|------|-------|---------|
| **gh CLI** | **83.2** | GitHub in terminal |
| CodeQL | 73.9 | Code analysis |
| lazygit | 46 | Git TUI |

## Code Intelligence

| Tool | Score | Type |
|------|-------|------|
| **grepai** | **88.4** | Semantic search |
| **ast-grep** | **78.7** | AST structural |
| semgrep | 70.4 | Security analysis |

## AI/LLM Tools

| Tool | Score | Purpose |
|------|-------|---------|
| **llm** | **89.3** | Universal LLM CLI |
| **grepai** | **88.4** | Semantic code search |
| DocsGPT | 84.4 | Documentation Q&A |
| **bun** | **85.0** | JS runtime |
| aider CE | 69.8 | AI pair programming |
| mods | 67.9 | LLM in pipelines |
| GPT Researcher | 73.2 | Research reports |
| shell-gpt | 60.7 | GPT assistant |

## Summary: Top 20 Tools by Score

| Rank | Tool | Score | Category |
|------|------|-------|----------|
| 1 | yq | 96.4 | File Ops |
| 2 | Fish | 94.5 | Shell |
| 3 | bat | 91.8 | File Ops |
| 4 | uv | 91.4 | Productivity |
| 5 | WezTerm | 91.1 | Terminal |
| 6 | sd | 90.8 | File Ops |
| 7 | llm | 89.3 | AI |
| 8 | grepai | 88.4 | Code Intelligence |
| 9 | Zinit | 87.3 | ZSH Framework |
| 10 | Oh-My-Zsh | 87.7 | ZSH Framework |
| 11 | fd | 86.1 | File Ops |
| 12 | bun | 85.0 | Productivity |
| 13 | Nushell | 85.0 | Shell |
| 14 | fzf | 85.4 | Productivity |
| 15 | jq | 85.7 | File Ops |
| 16 | Wave Terminal | 86.2 | Terminal |
| 17 | gh CLI | 83.2 | GitHub |
| 18 | Kitty | 80.5 | Terminal |
| 19 | Starship | 80.8 | Prompt |
| 20 | ripgrep | 81 | File Ops |

## User Environment Scores

### Current State
| Component | Status |
|-----------|--------|
| Terminal (xterm) | Not ranked (slow, CPU-only) |
| Shell (zsh) | 70.9 + 915ms startup (broken) |
| Prompt | Unknown |

### After Optimization
| Component | Tool | Score |
|-----------|------|-------|
| Terminal | WezTerm | 91.1 |
| Shell | Fish | 94.5 |
| Prompt | Starship | 80.8 |

### Improvement
- Terminal: **Not ranked → 91.1**
- Shell: **70.9 → 94.5** (30x faster startup)
- Overall: **Massive improvement across all layers**
