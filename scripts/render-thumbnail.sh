#!/bin/bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "${ROOT}"
typst compile --root . scripts/thumbnail.typ thumbnail.png --format png
echo "Wrote thumbnail.png"
