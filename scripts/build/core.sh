#!/bin/bash
set -e

# Source rustup environment
if [ -f "$HOME/.cargo/env" ]; then
    source "$HOME/.cargo/env"
fi

echo "🦀 Building Rust core for Linux..."

cd "$(dirname "$0")/../../core"

# Build for Linux
cargo build --release

echo "✅ Rust core built successfully!"
echo "📦 Output: core/target/release/libgonhanh_core.so"
