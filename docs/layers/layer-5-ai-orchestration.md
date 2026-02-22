# Layer 5: AI Orchestration

> Multi-model CLI tools for terminal workflows

## Overview

Layer 5 installs and uses three AI CLIs:

- Claude Code (`@anthropic-ai/claude-code`)
- Gemini CLI (`@google/gemini-cli`)
- Codex CLI (`@openai/codex`)

## Current System Versions

Snapshot timestamp: `2026-02-23T00:41:07+07:00`

| Tool | Provider | Installed Version |
|------|----------|-------------------|
| Claude Code | Anthropic | `2.1.50 (Claude Code)` |
| Gemini CLI | Google | `0.29.5` |
| Codex CLI | OpenAI | `codex-cli 0.104.0` |
| Node.js | Node.js | `v24.12.0` |
| npm | npm | `11.6.2` |

## Installation

### Scripted

```bash
./scripts/install-layer-5.sh
```

### Manual

```bash
# Node.js is required for all tools
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs

npm install -g @anthropic-ai/claude-code
npm install -g @google/gemini-cli
npm install -g @openai/codex
```

## Authentication

### Claude Code

```bash
claude
```

### Gemini CLI

```bash
# OAuth
gemini

# API key mode
export GEMINI_API_KEY="your-key"
gemini
```

### Codex CLI

```bash
export OPENAI_API_KEY="your-key"
codex
```

## Basic Usage

```bash
claude "Explain this repository"
gemini -p "Research best practices for this stack"
codex exec --sandbox read-only "Review this code for regressions"
```
