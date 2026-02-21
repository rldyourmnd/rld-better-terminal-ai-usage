# Context Directory

> Complete research data and tool documentation

This directory contains all research data, benchmarks, and detailed tool documentation from the Context7 analysis conducted in February 2026.

## Directory Structure

```
context/
├── README.md                    # This file
├── context7-scores.md           # All Context7 benchmark scores
├── benchmarks.md                # Performance benchmarks
├── research/
│   ├── terminals.md             # Terminal emulator research
│   ├── shells.md                # Shell research
│   └── ai-tools.md              # AI/LLM tools research
└── tools/
    ├── layer-1-file-ops.md      # File operations tools
    ├── layer-2-productivity.md  # Productivity tools
    ├── layer-3-github.md        # GitHub & Git tools
    └── layer-4-code-intelligence.md  # Code intelligence tools
```

## Quick Reference

### Top Tools by Context7 Score

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
| 10 | fd | 86.1 | File Ops |

### Key Findings

1. **Terminal:** WezTerm (91.1) - Best overall with built-in multiplexer
2. **Shell:** Fish (94.5) - Fastest with autosuggestions
3. **Prompt:** Starship (80.8) - Cross-shell, <5ms
4. **Code Search:** grepai (88.4) - Semantic understanding
5. **Package Manager (Python):** uv (91.4) - 10-100x faster

### Expected Improvements

| Metric | Before | After | Improvement |
|--------|--------|-------|-------------|
| Shell startup | 915ms | 30ms | **30x** |
| Terminal startup | 300-500ms | 50-80ms | **6x** |
| Input latency | 30-50ms | <5ms | **10x** |

## Research Files

### Terminals Research
- WezTerm vs Kitty vs Warp analysis
- GPU acceleration capabilities
- NVIDIA + Linux compatibility
- Multiplexer comparisons

### Shells Research
- Fish vs Zsh vs Nushell analysis
- ZSH framework comparisons (Zinit vs Oh-My-Zsh)
- Prompt systems (Starship vs Powerlevel10k)
- Startup time benchmarks

### AI Tools Research
- llm CLI (89.3) - Universal LLM interface
- grepai (88.4) - Semantic code search
- aider (69.8) - AI pair programming
- Comparison with Warp Terminal AI

## Tool Documentation

Each layer has detailed documentation including:
- Installation instructions
- Key features
- Usage examples
- Configuration options
- Performance comparisons

## Data Sources

All data sourced from:
- **Context7** - AI documentation and benchmark platform
- **February 2026** - Research date
- **User Environment** - RTX 2070, i7-8750H, 32GB RAM, Wayland

## Contributing

To add new research:
1. Create file in appropriate subdirectory
2. Follow existing format
3. Include Context7 scores where available
4. Add practical usage examples
