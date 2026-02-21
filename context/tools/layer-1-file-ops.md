# Layer 1: File Operations Tools

> Complete documentation for file operation tools

## Overview

All tools in this layer provide 10-100x performance improvement over classic Unix utilities.

---

## bat (Score: 91.8)

### Description
cat(1) clone with syntax highlighting and Git integration

### Installation
```bash
sudo apt install bat
# Create symlink (Ubuntu names it batcat)
mkdir -p ~/.local/bin && ln -sf /usr/bin/batcat ~/.local/bin/bat
```

### Key Features
- Syntax highlighting for 150+ languages
- Git integration (shows modifications)
- Line numbers
- Non-printable character visualization
- Built-in themes

### Usage Examples
```bash
# Basic usage
bat file.txt

# With line numbers
bat -n file.txt

# Show Git changes
bat --diff file.txt

# Multiple files (with headers)
bat file1.txt file2.py file3.rs

# Specify language
bat -l python script.py

# Disable paging
bat --paging=never file.txt

# Custom theme
bat --theme=GitHub file.md
```

### Configuration
```bash
# Set default theme
bat --theme=Catppuccin-mocha

# Config file location
~/.config/bat/config
```

---

## fd (Score: 86.1)

### Description
Simple, fast, user-friendly alternative to find

### Installation
```bash
sudo apt install fd-find
ln -sf $(which fdfind) ~/.local/bin/fd
```

### Key Features
- Parallel directory traversal
- Respects .gitignore by default
- Smart case sensitivity
- Colorized output
- Regex support

### Usage Examples
```bash
# Find by name pattern
fd pattern

# Find files only
fd -t f pattern

# Find directories only
fd -t d pattern

# Find with extension
fd -e rs pattern

# Find and execute command
fd -e rs -x wc -l

# Exclude directories
fd pattern --exclude node_modules --exclude target

# Case sensitive
fd -s PATTERN

# Show hidden files
fd -H pattern

# Absolute paths
fd -a pattern

# Max depth
fd --max-depth 2 pattern
```

---

## rg (ripgrep) (Score: 81)

### Description
Fast line-oriented search tool that respects gitignore

### Installation
```bash
sudo apt install ripgrep
```

### Key Features
- 10-100x faster than grep
- Respects .gitignore
- Skips hidden/binary files by default
- Supports PCRE2 regex
- Colorized output

### Usage Examples
```bash
# Basic search
rg pattern

# Search in specific files
rg -t rust pattern

# Search with context
rg -C 3 pattern

# Search and replace preview
rg -r 'replacement' pattern

# List matching files only
rg -l pattern

# Case insensitive
rg -i pattern

# Search hidden files
rg --hidden pattern

# Specific directory
rg pattern src/

# Regex groups
rg 'fn (\w+)' -r '$1'

# Count matches
rg -c pattern
```

---

## sd (Score: 90.8)

### Description
Intuitive find and replace CLI (sed alternative)

### Installation
```bash
cargo install sd
```

### Key Features
- Painless regex
- String literal mode
- Intuitive syntax
- No escaping issues

### Usage Examples
```bash
# Simple replacement
sd 'old' 'new' file.txt

# Regex replacement
sd '(\w+)@(\w+)' '$2@$1' file.txt

# In-place edit
sd -i 'old' 'new' file.txt

# Pipeline
cat file.txt | sd 'old' 'new'

# Multiple files
sd 'old' 'new' *.txt

# Case insensitive
sd -i 'OLD' 'new' file.txt

# Regex with groups
sd 'function (\w+)\(' 'def $1(' file.py
```

### Comparison with sed
```bash
# sed (complex escaping)
sed -E 's/(foo|bar)/baz/g' file.txt

# sd (cleaner)
sd '(foo|bar)' 'baz' file.txt
```

---

## jq (Score: 85.7)

### Description
Lightweight command-line JSON processor

### Installation
```bash
sudo apt install jq
```

### Key Features
- Powerful filtering
- Transformations
- Slice/filter/map
- Stream processing

### Usage Examples
```bash
# Pretty print
jq '.' file.json

# Extract field
jq '.field' file.json

# Nested field
jq '.user.name' file.json

# Array access
jq '.items[0]' file.json

# Array iteration
jq '.[]' file.json

# Filter array
jq '.[] | select(.age > 30)' file.json

# Transform
jq '{name: .name, age: .age}' file.json

# Count
jq 'length' file.json

# Keys
jq 'keys' file.json

# Combine filters
jq '.users[] | select(.active) | .email' file.json

# From stdin
curl -s api/data | jq '.data'
```

---

## yq (Score: 96.4)

### Description
Portable command-line YAML/JSON/XML/CSV processor

### Installation
```bash
sudo wget -qO /usr/local/bin/yq https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64
sudo chmod +x /usr/local/bin/yq
```

### Key Features
- Unified processor for multiple formats
- jq-like syntax
- In-place editing
- Format conversion

### Usage Examples
```bash
# Read YAML value
yq '.key' file.yaml

# Read nested
yq '.parent.child' file.yaml

# Convert to JSON
yq -o=json '.' file.yaml

# Update value
yq '.key = "new value"' -i file.yaml

# Read array
yq '.items[]' file.yaml

# Read XML
yq -p=xml '.root.element' file.xml

# Convert XML to YAML
yq -p=xml -o=yaml '.' file.xml

# Read CSV
yq -p=csv '.' file.csv

# Multiple files
yq '.version' *.yaml
```

---

## eza

### Description
Modern replacement for ls

### Installation
```bash
sudo apt install eza
```

### Key Features
- Colorized output
- Git status icons
- Tree view
- Icons support

### Usage Examples
```bash
# Basic listing
eza

# Long format
eza -la

# Tree view
eza --tree

# Tree with depth
eza --tree --level=2

# Git status
eza --git

# With icons
eza --icons

# Sort by size
eza -la --sort=size

# Sort by time
eza -la --sort=modified

# All files including hidden
eza -la
```

## Performance Comparison

| Operation | Classic | Modern | Speedup |
|-----------|---------|--------|---------|
| Search files | find | fd | 10x+ |
| Search text | grep | rg | 10x+ |
| View file | cat | bat | 2x+ |
| Replace text | sed | sd | 5x+ |
| List files | ls | eza | 2x+ |
