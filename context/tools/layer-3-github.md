# Layer 3: GitHub & Git Tools

> Complete documentation for GitHub and Git tools

---

## gh CLI (Score: 83.2)

### Description
GitHub's official command-line tool

### Installation
```bash
sudo apt install gh
# Or: brew install gh
```

### Authentication
```bash
# Interactive login
gh auth login

# Check status
gh auth status

# Logout
gh auth logout
```

### Repository Management
```bash
# Create repository
gh repo create my-project --public --clone
gh repo create my-project --private

# Clone repository
gh repo clone owner/repo

# Fork repository
gh repo fork owner/repo --clone

# View repository
gh repo view owner/repo

# List repositories
gh repo list --limit 50
gh repo list owner --limit 100

# Delete repository
gh repo delete owner/repo --yes

# Edit repository
gh repo edit --description "New description"
```

### Pull Requests
```bash
# Create PR
gh pr create --title "Feature" --body "Description"
gh pr create --web  # Open in browser
gh pr create --draft  # Create as draft
gh pr create --base develop --head feature

# List PRs
gh pr list --state open
gh pr list --author @me
gh pr list --label bug

# View PR
gh pr view 123
gh pr view 123 --web

# Checkout PR
gh pr checkout 123

# Merge PR
gh pr merge 123 --merge
gh pr merge 123 --squash
gh pr merge 123 --rebase

# Review PR
gh pr review 123 --approve
gh pr review 123 --request-changes --body "Please fix..."
gh pr review 123 --comment --body "LGTM"

# Close PR
gh pr close 123

# Ready for review
gh pr ready 123
```

### Issues
```bash
# Create issue
gh issue create --title "Bug" --body "Description"
gh issue create --label bug --assignee @me

# List issues
gh issue list --state open
gh issue list --assignee @me
gh issue list --label bug

# View issue
gh issue view 123
gh issue view 123 --web

# Close issue
gh issue close 123

# Reopen issue
gh issue reopen 123

# Edit issue
gh issue edit 123 --title "New title"
gh issue edit 123 --add-label enhancement
```

### Workflows (GitHub Actions)
```bash
# List workflows
gh workflow list

# View workflow
gh workflow view "CI"

# Run workflow
gh workflow run "CI"
gh workflow run "CI" --field param=value

# View runs
gh run list
gh run list --workflow=CI

# View specific run
gh run view RUN_ID

# Watch run
gh run watch

# Cancel run
gh run cancel RUN_ID

# Download logs
gh run download RUN_ID
```

### Gists
```bash
# Create gist
gh gist create file.txt
gh gist create file.txt --public

# List gists
gh gist list

# View gist
gh gist view ID

# Edit gist
gh gist edit ID

# Delete gist
gh gist delete ID
```

### Release Management
```bash
# Create release
gh release create v1.0.0

# With notes
gh release create v1.0.0 --notes "Release notes"

# With assets
gh release create v1.0.0 ./dist/*

# List releases
gh release list

# View release
gh release view v1.0.0

# Download release
gh release download v1.0.0
```

---

## lazygit (Score: 46)

### Description
Simple terminal UI for git commands

### Installation
```bash
sudo apt install lazygit
# Or: brew install lazygit
```

### Key Bindings

| Key | Action |
|-----|--------|
| `?` | Help |
| `j/k` | Navigate down/up |
| `h/l` | Switch panels |
| `a` | Stage/unstage all |
| `c` | Commit |
| `C` | Commit with editor |
| `P` | Push |
| `p` | Pull |
| `m` | Merge |
| `r` | Rebase |
| `f` | Fetch |
| `x` | Custom command |
| `b` | View branches |
| `s` | Stash |
| `R` | Refresh |
| `q` | Quit |
| `Ctrl+c` | Abort |
| `Ctrl+d` | Delete |
| `Ctrl+n` | New branch |

### Configuration (~/.config/lazygit/config.yml)
```yaml
gui:
  theme:
    activeBorderColor:
      - green
      - bold
  showFileTree: true
  showRandomTip: false

git:
  paging:
    colorArg: always
    pager: delta --dark --paging=never
```

---

## delta

### Description
Syntax-highlighting pager for git

### Installation
```bash
cargo install git-delta
```

### Git Configuration
```bash
# Set as pager
git config --global core.pager "delta"

# Side-by-side view
git config --global delta.side-by-side true

# Line numbers
git config --global delta.line-numbers true

# Theme
git config --global delta.syntax-theme "Catppuccin Mocha"

# Navigate with n/N
git config --global delta.navigate true

# Merge conflicts style
git config --global merge.conflictstyle diff3
```

### Features
- Syntax highlighting for 150+ languages
- Side-by-side view
- Line numbers
- Word-level diff highlighting
- Git blame support
- Hyperlinks to commits

### Usage
```bash
# Works automatically after config
git diff
git show HEAD
git log -p

# With options
delta --light  # Light mode
delta --diff-highlight  # Word diff
```
