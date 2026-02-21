# Layer 4: Code Intelligence Tools

> Complete documentation for code search and analysis tools

---

## grepai (Score: 88.4) - KEY TOOL

### Description
Semantic code search using vector embeddings - search by MEANING, not text

### Installation
```bash
pip install grepai
grepai init  # Initialize embeddings
```

### How It Works
1. Indexes code files
2. Creates vector embeddings
3. Matches queries by semantic similarity
4. Returns relevant code blocks

### Key Features
- Natural language queries
- No exact match needed
- JSON output for AI agents
- Token-optimized formats

### Usage Examples
```bash
# Initialize (build embeddings)
grepai init

# Semantic search with natural language
grepai search "user authentication flow"
grepai search "error handling middleware"
grepai search "database connection pool"
grepai search "API request validation"

# JSON output (for AI consumption)
grepai search "authentication" --json

# Compact output (saves ~80% tokens)
grepai search "auth flow" --json --compact

# Token-optimized format
grepai search "JWT validation" --toon

# Limit results
grepai search "API" --limit 5

# Search specific workspace
grepai search "login" --workspace myproject
grepai search "auth" --workspace myproject --project frontend
```

### AI Agent Integration
```bash
# Pipe to AI
grepai search "security vulnerability" --json | claude "Review this code"

# Get compact for context window
grepai search "main entry point" --toon > context.txt
```

---

## ast-grep (Score: 78.7)

### Description
AST-based structural code search, lint, and rewrite

### Installation
```bash
cargo install ast-grep
```

### Pattern Syntax

| Syntax | Meaning |
|--------|---------|
| `$NAME` | Single metavariable (identifier) |
| `$$$BODY` | Multiple statements/expressions |
| `$$$` | Zero or more of anything |
| `${NAME}suffix` | Metavariable with suffix |

### Usage Examples
```bash
# Find function definitions
sg -p 'fn $NAME($$$PARAMS) $$$BODY' -l rust

# Find all if statements
sg -p 'if ($COND) { $$$BODY }' -l javascript

# Find Python functions
sg -p 'def $NAME($$$PARAMS): $$$BODY' -l python

# Find Go structs
sg -p 'type $NAME struct { $$$FIELDS }' -l go

# Find Java methods
sg -p 'public $RET $NAME($$$PARAMS) { $$$BODY }' -l java

# Rewrite code
sg -p 'console.log($MSG)' -r 'logger.info($MSG)' -l typescript

# Rewrite var to const
sg -p 'var $VAR = $VAL' -r 'const $VAR = $VAL' -l javascript

# Interactive mode
sg -p 'var $VAR = $VAL' -l javascript -i

# In-place update
sg -p 'old_func($$$)' -r 'new_func($$$)' -l python --update-all
```

### Supported Languages
- Rust
- JavaScript/TypeScript
- Python
- Go
- Java
- C/C++
- Ruby
- PHP
- Scala
- Swift
- Kotlin
- And 20+ more

---

## probe

### Description
AI-friendly code block extraction using tree-sitter

### Installation
```bash
cargo install probe-cli
```

### Key Features
- Token-aware extraction
- Tree-sitter parsing
- Respects context window limits
- Perfect for LLM context

### Usage Examples
```bash
# Search with token limit
probe search "prompt injection" ./ --max-tokens 10000

# Query code structures
probe query "fn $NAME($$$PARAMS) $$$BODY" ./src --language rust

# Find Python classes
probe query "class $NAME: $$$BODY" ./src --language python

# Find JavaScript functions
probe query "function $NAME($$$) { $$$ }" ./src --language javascript

# With max tokens for context
probe search "authentication" ./ --max-tokens 8000
```

### AI Integration
```bash
# Feed to AI with context limit
probe search "main function" ./ --max-tokens 4000 | claude "Explain this"
```

---

## semgrep (Score: 70.4)

### Description
Static analysis for finding bugs, security issues, and enforcing standards

### Installation
```bash
pip install semgrep
# Or: brew install semgrep
```

### Usage Examples
```bash
# Scan with auto-detected rules
semgrep --config auto .

# Security audit
semgrep --config p/security-audit .

# OWASP Top 10
semgrep --config p/owasp-top-ten .

# Python specific
semgrep --config p/python .

# Custom rule
semgrep --config my-rules.yml .

# JSON output
semgrep --json .

# SARIF output (for CI/CD)
semgrep --sarif .

# CI mode
semgrep --ci

# Specific severity
semgrep --config auto --severity ERROR .
```

### Custom Rules
```yaml
# my-rules.yml
rules:
  - id: dangerous-function-call
    pattern: dangerous_func($X)
    message: "Avoid dangerous_func - security risk"
    severity: ERROR
    languages: [python]

  - id: unencrypted-password
    pattern: password = "..."
    message: "Hardcoded password detected"
    severity: WARNING
    languages: [python, javascript]
```

---

## ctags (Universal Ctags)

### Description
Generate index of language objects in source files

### Installation
```bash
sudo apt install universal-ctags
```

### Usage Examples
```bash
# Generate tags for project
ctags -R .

# With language filter
ctags -R --languages=Python,Rust,JavaScript .

# For specific directory
ctags -R src/

# Include field information
ctags -R --fields=+ne .

# Output to specific file
ctags -R -f tags .

# With exclusions
ctags -R --exclude=node_modules --exclude=target .

# Append mode
ctags -R -a .
```

### Vim Integration
```vim
" Jump to tag
:tag function_name

" List matching tags
:tselect function_name

" Next tag
:tnext

" Previous tag
:tprev
```

---

## tokei

### Description
Code statistics - count lines of code by language

### Installation
```bash
cargo install tokei
```

### Usage Examples
```bash
# Count lines in project
tokei

# By language
tokei --type rust,python,javascript

# Sort by lines
tokei --sort lines

# Sort by code
tokei --sort code

# Output as JSON
tokei --output json

# Output as CBOR
tokei --output cbor

# Exclude directories
tokei --exclude node_modules target build

# Include hidden files
tokei --hidden

# Specific files
tokei src/*.rs
```

### Output Example
```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
 Language            Files        Lines         Code     Comments       Blanks
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
 Rust                   10         1500         1200          150          150
 Python                  5          800          650          100           50
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
 Total                  15         2300         1850          250          200
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

## Comparison Table

| Feature | grepai | ast-grep | probe | semgrep |
|---------|--------|----------|-------|---------|
| **Search type** | Semantic | AST structural | Hybrid | Pattern |
| **Query format** | Natural language | AST pattern | Both | Rule-based |
| **AI-friendly** | Yes | Yes | Yes | Yes |
| **Token control** | Yes (--toon) | No | Yes (--max-tokens) | No |
| **Security focus** | No | No | No | Yes |
| **Code rewrite** | No | Yes | No | No |
| **Languages** | All | 30+ | All (tree-sitter) | 30+ |

---

## AI Agent Workflow

```bash
# 1. Semantic search to understand codebase
grepai search "user registration flow" --json --compact

# 2. Structural search for specific patterns
sg -p 'async def $NAME($$$): $$$BODY' -l python

# 3. Extract code for AI context (token-limited)
probe search "authentication" ./ --max-tokens 8000

# 4. Security scan
semgrep --config auto .

# 5. Get code statistics
tokei
```
