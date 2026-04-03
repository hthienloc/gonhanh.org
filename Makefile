# ============================================================================
# Gõ Nhanh - Vietnamese Input Method Engine
# ============================================================================

.DEFAULT_GOAL := help

# Version from git tag
TAG := $(shell git describe --tags --abbrev=0 --match "v*" --exclude "v*-pre*" 2>/dev/null || echo v0.0.0)
VER := $(subst v,,$(TAG))
NEXT_PATCH := $(shell echo $(VER) | awk -F. '{print $$1"."$$2"."$$3+1}')
NEXT_MINOR := $(shell echo $(VER) | awk -F. '{print $$1"."$$2+1".0"}')
NEXT_MAJOR := $(shell echo $(VER) | awk -F. '{print $$1+1".0.0"}')

# ============================================================================
# Help
# ============================================================================

.PHONY: help
help:
	@echo "⚡ Gõ Nhanh - Vietnamese Input Method Engine"
	@echo ""
	@echo "Usage: make [target]"
	@echo ""
	@echo "\033[1;32mDev:\033[0m"
	@echo "  test        Run Rust tests"
	@echo "  format      Format code (Rust)"
	@echo "  lint        Check lint (clippy)"
	@echo "  build       Build Linux Fcitx5"
	@echo "  clean       Clean artifacts"
	@echo ""
	@echo "\033[1;32mDebug:\033[0m"
	@echo "  watch       Tail debug log (/tmp/gonhanh_debug.log)"
	@echo "  test-dict   Dictionary tests (VN: 100%, EN: 97%)"
	@echo "  test-22k    Run heavy 22k tests + gen typing orders"
	@echo "  test-100k   Run English 100k tests"
	@echo ""
	@echo "\033[1;32mInstall:\033[0m"
	@echo "  setup       Setup dev environment"
	@echo ""
	@echo "\033[1;32mRelease:\033[0m"
	@echo "  release       Patch  $(TAG) → v$(NEXT_PATCH)"
	@echo "  release-minor Minor  $(TAG) → v$(NEXT_MINOR)"
	@echo "  release-major Major  $(TAG) → v$(NEXT_MAJOR)"
	@echo "  pre-release   Trigger pre-release build on CI"

# ============================================================================
# Development
# ============================================================================

.PHONY: test format lint build clean all
all: test build

test:
	@cd core && cargo test
	@./scripts/test/dict.sh

format:
	@cd core && cargo fmt

lint:
	@cd core && cargo clippy -- -D warnings

build: format ## Build Linux Fcitx5
	@cd platforms/linux && ./scripts/build.sh

clean: ## Clean build
	@cd core && cargo clean
	@rm -rf platforms/linux/build
	@echo "✅ Cleaned build artifacts"

# ============================================================================
# Debug
# ============================================================================

.PHONY: watch test-22k test-100k test-dict
watch:
	@rm -f /tmp/gonhanh_debug.log && touch /tmp/gonhanh_debug.log
	@echo "📋 Watching /tmp/gonhanh_debug.log (Ctrl+C to stop)"
	@tail -f /tmp/gonhanh_debug.log

test-22k: ## Run heavy 22k tests + generate typing orders
	@cd core && cargo test -- --ignored --nocapture

test-100k: ## Run English 100k tests
	@cd core && cargo test --test english_100k_test -- --nocapture
	@cd core && cargo test --test english_telex_patterns_test -- --nocapture

test-dict: ## Run dictionary tests (VN: 100%, EN: 97%)
	@./scripts/test/dict.sh

# ============================================================================
# Install
# ============================================================================

.PHONY: setup
setup: ## Setup dev environment
	@./scripts/setup/linux.sh

# ============================================================================
# Release (auto-versioning from git tags)
# ============================================================================

.PHONY: release release-minor release-major pre-release

release: ## Patch release (1.0.9 → 1.0.10)
	@git pull --rebase origin main --tags
	@echo "$(TAG) → v$(NEXT_PATCH)"
	@git add -A && git commit -m "release: v$(NEXT_PATCH)" --allow-empty
	@./scripts/release/notes.sh v$(NEXT_PATCH) > /tmp/release_notes.md
	@git tag -a v$(NEXT_PATCH) -F /tmp/release_notes.md --cleanup=verbatim
	@git push origin main v$(NEXT_PATCH)
	@echo "→ https://github.com/khaphanspace/gonhanh.org/releases"

release-minor: ## Minor release (1.0.9 → 1.1.0)
	@git pull --rebase origin main --tags
	@echo "$(TAG) → v$(NEXT_MINOR)"
	@git add -A && git commit -m "release: v$(NEXT_MINOR)" --allow-empty
	@./scripts/release/notes.sh v$(NEXT_MINOR) > /tmp/release_notes.md
	@git tag -a v$(NEXT_MINOR) -F /tmp/release_notes.md --cleanup=verbatim
	@git push origin main v$(NEXT_MINOR)
	@echo "→ https://github.com/khaphanspace/gonhanh.org/releases"

release-major: ## Major release (1.0.9 → 2.0.0)
	@git pull --rebase origin main --tags
	@echo "$(TAG) → v$(NEXT_MAJOR)"
	@git add -A && git commit -m "release: v$(NEXT_MAJOR)" --allow-empty
	@./scripts/release/notes.sh v$(NEXT_MAJOR) > /tmp/release_notes.md
	@git tag -a v$(NEXT_MAJOR) -F /tmp/release_notes.md --cleanup=verbatim
	@git push origin main v$(NEXT_MAJOR)
	@echo "→ https://github.com/khaphanspace/gonhanh.org/releases"

pre-release: ## Trigger pre-release build on CI
	@gh workflow run pre-release.yml -R khaphanspace/gonhanh.org
	@echo "✅ Pre-release build triggered"
	@echo "→ https://github.com/khaphanspace/gonhanh.org/actions/workflows/pre-release.yml"

