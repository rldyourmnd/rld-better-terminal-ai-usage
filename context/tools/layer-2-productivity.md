# Layer 2: Productivity Tools

> Complete documentation for productivity tools

---

## fzf (Score: 85.4)

### Description
General-purpose command-line fuzzy finder

### Installation
```bash
sudo apt install fzf
# Or for latest:
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

### Key Features
- Fuzzy matching algorithm
- Vim/Neovim integration
- Preview support
- Highly customizable

### Usage Examples
```bash
# Find files (Ctrl+T)
fzf

# With preview
fzf --preview 'bat --style=numbers --color=always {}'

# Search history (Ctrl+R)
# Built-in when installed

# Change directory (Alt+C)
# Built-in when installed

# With ripgrep
rg --files | fzf

# Multi-select
fzf -m

# Custom prompt
fzf --prompt="Files> "

# Bind to keys
fzf --bind 'enter:become(vim {})'
```

### Shell Integration
```bash
# Fish
fzf --fish | source

# Zsh
source <(fzf --zsh)

# Bash
eval "$(fzf --bash)"
```

---

## zoxide

### Description
Smart cd command that learns your habits

### Installation
```bash
cargo install zoxide
```

### Key Features
- Frecency algorithm (frequency + recency)
- Fast directory jumping
- Shell integration
- Compatible with z/autojump

### Usage Examples
```bash
# Add directory to database
z /path/to/project

# Jump to frequently used directory
z proj          # Jumps to ~/projects

# Jump with query
z repo code     # Jumps to ~/repos/code-project

# Interactive selection (fzf)
zi

# Previous directory
z -

# List database
zoxide query -l
```

### Shell Integration
```bash
# Fish
zoxide init fish | source

# Zsh
eval "$(zoxide init zsh)"

# Bash
eval "$(zoxide init bash)"
```

---

## Atuin (Score: 68.5)

### Description
Better shell history with SQLite storage and sync

### Installation
```bash
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
```

### Key Features
- SQLite database storage
- Encrypted sync between machines
- Full-screen history search
- Context preservation
- Statistics

### Usage Examples
```bash
# Search history (replaces Ctrl+R)
# Press Ctrl+R for TUI search

# Sync history
atuin sync

# View history
atuin history list

# Search specific pattern
atuin search "git commit"

# Statistics
atuin stats

# Login for sync
atuin login -u USERNAME -e EMAIL

# Import existing history
atuin import auto
```

### Configuration (~/.config/atuin/config.toml)
```toml
# Sync settings
auto_sync = true
sync_address = "https://api.atuin.sh"
sync_frequency = "1h"

# Search behavior
search_mode = "fuzzy"
filter_mode = "global"

# UI settings
style = "compact"
inline_height = 40

# Background daemon
[daemon]
enabled = true
sync_frequency = 300
```

---

## uv (Score: 91.4)

### Description
Extremely fast Python package manager (Rust-based)

### Installation
```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

### Key Features
- 10-100x faster than pip
- Replaces pip, pip-tools, pipx, poetry
- Virtual environment management
- Tool installation

### Usage Examples
```bash
# Install package
uv pip install package

# Install from requirements
uv pip install -r requirements.txt

# Create virtual environment
uv venv

# Activate venv
source .venv/bin/activate

# Run with package
uvx black script.py

# Install tool globally
uv tool install black

# List installed tools
uv tool list

# Python version management
uv python install 3.12
uv python list

# Project initialization
uv init my-project
```

### Performance
| Operation | pip | uv | Speedup |
|-----------|-----|-----|---------|
| Install numpy | 5s | 0.1s | 50x |
| Install Django | 10s | 0.2s | 50x |
| Create venv | 2s | 0.05s | 40x |

---

## bun

### Description
All-in-one JavaScript runtime (runtime + bundler + test runner + package manager)

### Installation
```bash
curl -fsSL https://bun.sh/install | bash
```

### Key Features
- 3-10x faster than npm
- Node.js compatible
- TypeScript support
- Built-in test runner

### Usage Examples
```bash
# Install package
bun add package

# Install dev dependency
bun add -d package

# Install all dependencies
bun install

# Run script
bun run script.ts

# Start project
bun start

# Run file directly
bun file.ts

# Create new project
bun create react my-app

# Test
bun test

# Build
bun build ./src/index.ts --outdir ./dist
```

---

## watchexec

### Description
Execute commands when files change

### Installation
```bash
cargo install watchexec
```

### Usage Examples
```bash
# Run on any change
watchexec command

# Watch specific extensions
watchexec -e py,rs command

# Watch specific directory
watchexec -w src command

# Clear screen before run
watchexec -c command

# With shell
watchexec --shell bash "echo changed"

# Ignore patterns
watchexec -i "*.log" command

# Multiple commands
watchexec "cargo build && cargo test"
```

---

## glow (Score: 76.1)

### Description
Terminal-based markdown reader

### Installation
```bash
sudo apt install glow
```

### Usage Examples
```bash
# Render file
glow README.md

# From stdin
cat README.md | glow

# Browse directory
glow

# Pagination
glow -p README.md

# Custom width
glow -w 80 README.md

# No styles
glow -s none README.md
```

---

## bottom (btm)

### Description
Cross-platform graphical process/system monitor

### Installation
```bash
cargo install bottom
# Or: sudo apt install bottom
```

### Usage Examples
```bash
# Start monitor
btm

# Basic mode
btm --basic

# No network
btm --hide_avg_cpu

# Temperature in Celsius
btm -C

# Config file
btm -c ~/.config/bottom/btm.toml
```

---

## hyperfine (Score: 81.3)

### Description
Command-line benchmarking tool

### Installation
```bash
cargo install hyperfine
```

### Usage Examples
```bash
# Benchmark command
hyperfine 'command'

# Compare commands
hyperfine 'cmd1' 'cmd2' 'cmd3'

# Multiple runs
hyperfine -r 10 'command'

# Warmup runs
hyperfine -w 3 'command'

# Export markdown
hyperfine --export-markdown results.md 'cmd1' 'cmd2'

# Export JSON
hyperfine --export-json results.json 'command'

# Show output
hyperfine --show-output 'command'
```
