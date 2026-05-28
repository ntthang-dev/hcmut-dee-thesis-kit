#!/bin/bash
# ============================================================
#  HCMUT-DEE Thesis Kit v2.0.4 — Compile Script (Bash)
#  Copyright (c) 2026 Nguyễn Trọng Thắng & TS. Nguyễn Phúc Khải
#  License: MIT
#
#  Usage:
#    ./compile.sh                    # Compile thesis/thesis.tex
#    ./compile.sh slides             # Compile slides/main.tex
#    ./compile.sh thesis thesis      # Explicit dir + file
# ============================================================

DIR="${1:-thesis}"
if [ "$DIR" = "thesis" ]; then
    FILE="${2:-thesis}"
else
    FILE="${2:-main}"
fi
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET_DIR="$SCRIPT_DIR/../$DIR"

if [ ! -d "$TARGET_DIR" ]; then
    echo "[-] Directory not found: $DIR"
    exit 1
fi

cd "$TARGET_DIR" || exit 1

echo "================================================="
echo "  HCMUT-DEE Thesis Kit — Compiler"
echo "  File: $DIR/$FILE.tex"
echo "================================================="

echo "[1/4] pdflatex pass 1..."
pdflatex -interaction=nonstopmode "$FILE.tex" > /dev/null 2>&1

echo "[2/4] bibtex..."
bibtex "$FILE" > /dev/null 2>&1

echo "[3/4] pdflatex pass 2..."
pdflatex -interaction=nonstopmode "$FILE.tex" > /dev/null 2>&1

echo "[4/4] pdflatex pass 3..."
pdflatex -interaction=nonstopmode "$FILE.tex" > /dev/null 2>&1

# Check for fatal errors
if grep -q "Fatal error\|Emergency stop" "$FILE.log" 2>/dev/null; then
    echo "[-] FATAL ERROR! Check $FILE.log"
    exit 1
fi

UNDEF=$(grep -c "undefined" "$FILE.log" 2>/dev/null || echo 0)
MISSING=$(grep -c "File.*not found" "$FILE.log" 2>/dev/null || echo 0)

echo ""
echo "================================================="
echo "  COMPILATION SUCCESSFUL!"
echo "  Output: $DIR/$FILE.pdf"
echo "  Undefined refs: $UNDEF"
echo "  Missing files:  $MISSING"
echo "================================================="
