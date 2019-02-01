#!/bin/sh

cd "$(dirname "$0")" || exit 1

[ -n "$1" ] || { echo "No desktop type given"; exit 1; }
[ -f "$1/ddexec.yml" ] || { echo "ddexec.yml not found for $1"; exit 1; }

command -v ddexec >/dev/null || { 
    echo "ddexec is not installed"
    echo "Try: curl -fsSL https://raw.githubusercontent.com/rycus86/ddexec/master/install.sh | sh"
    exit 1
}

exec ddexec --desktop "$1/ddexec.yml"
