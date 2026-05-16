#!/bin/bash
# Links this repo into Typst's package search path so @preview/unofficial-ucy-thesis:0.1.0
# resolves here without publishing to Typst Universe.
set -euo pipefail

VERSION="0.1.0"
PACKAGE_NAME="unofficial-ucy-thesis"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
LINK_DIR="${ROOT_DIR}/.packages/preview/${PACKAGE_NAME}/${VERSION}"

mkdir -p "$(dirname "${LINK_DIR}")"
ln -sfn "${ROOT_DIR}" "${LINK_DIR}"

echo "Linked package at:"
echo "  ${LINK_DIR} -> ${ROOT_DIR}"
echo ""
echo "Compile from the repo root with:"
echo "  ./scripts/compile.sh"
echo "  # or:"
echo "  TYPST_PACKAGE_PATH=\"${ROOT_DIR}/.packages\" typst compile template/thesis.typ"
