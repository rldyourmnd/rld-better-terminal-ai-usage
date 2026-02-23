#!/usr/bin/env bash
# macOS orchestrator: Foundation + Layers 1..5

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=common.sh
source "$SCRIPT_DIR/common.sh"

ensure_macos
ensure_brew

run_step() {
  local script_path="$1"
  local script_name

  script_name="$(basename "$script_path")"
  if [[ ! -x "$script_path" ]]; then
    log_error "Script missing or not executable: $script_path"
    exit 1
  fi

  log_info "Running $script_name..."
  "$script_path"
  log_success "$script_name complete"
}

echo ""
echo "════════════════════════════════════════════════════════════"
echo "  MACOS INSTALLATION PIPELINE"
echo "  Foundation + Layers 1..5"
echo "════════════════════════════════════════════════════════════"
echo ""

run_step "$SCRIPT_DIR/install-foundation.sh"
run_step "$SCRIPT_DIR/install-layer-1.sh"
run_step "$SCRIPT_DIR/install-layer-2.sh"
run_step "$SCRIPT_DIR/install-layer-3.sh"
run_step "$SCRIPT_DIR/install-layer-4.sh"
run_step "$SCRIPT_DIR/install-layer-5.sh"

echo ""
echo -e "${GREEN}════════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}  MACOS INSTALLATION COMPLETE!                              ${NC}"
echo -e "${GREEN}════════════════════════════════════════════════════════════${NC}"
echo ""
echo "Next steps:"
echo "1. Restart terminal and run: exec fish"
echo "2. Authenticate GitHub CLI: gh auth login"
echo "3. Authenticate AI CLIs: claude / gemini / codex"
echo "4. Run health-check: ./scripts/macos/health-check.sh --summary"
