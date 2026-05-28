#!/usr/bin/env python3
"""
HCMUT-DEE Thesis Kit v2.0.3 — Clean Build Artifacts
Copyright (c) 2026 Nguyen Trong Thang & TS. Nguyen Phuc Khai
License: MIT

Usage:
    python clean.py              # Clean thesis/ folder
    python clean.py --dir slides # Clean slides/ folder
    python clean.py --all        # Clean all
"""

import os
import sys
import glob
import argparse

EXTENSIONS = [
    '*.aux', '*.log', '*.toc', '*.lof', '*.lot', '*.out',
    '*.bbl', '*.blg', '*.synctex.gz', '*.synctex(busy)',
    '*.fdb_latexmk', '*.fls', '*.nav', '*.snm', '*.vrb',
    '*.bcf', '*.run.xml', '*.dvi', '*.ps',
    '*-converted-to.*',
]

def clean_directory(directory):
    """Remove LaTeX build artifacts from directory."""
    count = 0
    total_size = 0

    for ext in EXTENSIONS:
        pattern = os.path.join(directory, '**', ext)
        for filepath in glob.glob(pattern, recursive=True):
            size = os.path.getsize(filepath)
            os.remove(filepath)
            count += 1
            total_size += size

    return count, total_size

def main():
    parser = argparse.ArgumentParser(
        description='Clean LaTeX build artifacts'
    )
    parser.add_argument(
        '--dir', default='thesis',
        help='Directory to clean (default: thesis)'
    )
    parser.add_argument(
        '--all', action='store_true',
        help='Clean all directories (thesis + slides)'
    )
    args = parser.parse_args()

    script_dir = os.path.dirname(os.path.abspath(__file__))
    root_dir = os.path.dirname(script_dir)

    dirs_to_clean = []
    if args.all:
        dirs_to_clean = ['thesis', 'slides']
    else:
        dirs_to_clean = [args.dir]

    total_count = 0
    total_size = 0

    for d in dirs_to_clean:
        target = os.path.join(root_dir, d)
        if not os.path.isdir(target):
            print(f"[!] Directory not found: {d}")
            continue

        count, size = clean_directory(target)
        total_count += count
        total_size += size
        print(f"[+] {d}/: removed {count} files ({size/1024:.1f} KB)")

    print(f"\nTotal: {total_count} files removed ({total_size/1024:.1f} KB)")

if __name__ == '__main__':
    main()
