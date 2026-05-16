#!/bin/bash
# Installs into Typst package directories so @preview/unofficial-ucy-thesis:0.1.0 resolves.
set -euo pipefail

VERSION="0.1.0"
PACKAGE_NAME="unofficial-ucy-thesis"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

install-into() {
  local base="$1"
  local dir="${base}/preview/${PACKAGE_NAME}/${VERSION}"
  echo "  -> ${dir}"
  rm -rf "${dir}"
  mkdir -p "${dir}"
  cp -r "${ROOT_DIR}/src" "${dir}/"
  cp -r "${ROOT_DIR}/template" "${dir}/"
  cp "${ROOT_DIR}/typst.toml" "${dir}/"
}

echo "Installing ${PACKAGE_NAME}@${VERSION}..."

installed=false

if [[ -d "${HOME}/Library/Caches/typst/packages" ]]; then
  if install-into "${HOME}/Library/Caches/typst/packages" 2>/dev/null; then
    installed=true
  else
    echo "  (skipped package cache — permission denied; use ./scripts/compile.sh instead)"
  fi
fi

if [[ -d "${HOME}/Library/Application Support/typst/packages" ]]; then
  install-into "${HOME}/Library/Application Support/typst/packages"
  installed=true
fi

if [[ "${installed}" != true ]]; then
  echo "Could not install to any Typst package directory." >&2
  exit 1
fi

echo ""
echo "Done. Compile with: typst compile template/thesis.typ"
echo "For live edits without re-installing: ./scripts/compile.sh"
