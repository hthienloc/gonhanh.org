# Contributing to Gõ Nhanh

Thank you for your interest in contributing! 🎉

## Getting Started

1. Fork the repository
2. Clone your fork: `git clone https://github.com/khaphanspace/gonhanh.org`
3. Run setup: `make setup`
4. Create a branch: `git checkout -b feature/my-feature`

## Development Workflow

### For Rust Core

```bash
cd core

# Make changes to src/
# Run tests
cargo test
# Check formatting
cargo fmt --check
# Run linter
cargo clippy
```

### For Linux UI (Fcitx5 Addon)

```bash
# Build the addon
make build

# The output will be in platforms/linux/build
```

## Commit Messages

Follow [Conventional Commits](https://www.conventionalcommits.org/):

```
feat: add VNI support
fix: handle special characters in Fcitx5
docs: update installation guide
test: add engine tests
```

---

## 📄 License

Copyright © 2025 Gõ Nhanh Contributors. [BSD-3-Clause](LICENSE).
