#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
export TYPST_PACKAGE_PATH="${ROOT_DIR}/.packages"

if [[ ! -L "${ROOT_DIR}/.packages/preview/unofficial-ucy-thesis/0.1.0" ]]; then
  "${SCRIPT_DIR}/dev-setup.sh"
fi

cd "${ROOT_DIR}"
typst compile template/thesis.typ "$@"
