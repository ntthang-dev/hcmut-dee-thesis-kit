# ============================================================
#  HCMUT-DEE Thesis Kit v2.0.4 — Compile Script (PowerShell)
#  Copyright (c) 2026 Nguyễn Trọng Thắng & TS. Nguyễn Phúc Khải
#  License: MIT
#
#  Usage:
#    .\compile.ps1                    # Compile thesis/thesis.tex
#    .\compile.ps1 -Dir slides        # Compile slides/main.tex
#    .\compile.ps1 -File thesis -Dir thesis
# ============================================================

param(
    [string]$File,
    [string]$Dir  = 'thesis'
)

if ([string]::IsNullOrEmpty($File)) {
    if ($Dir -eq 'thesis') {
        $File = 'thesis'
    } else {
        $File = 'main'
    }
}

$OriginalDir = Get-Location
$TargetDir = Join-Path $PSScriptRoot "..\$Dir"

if (-not (Test-Path $TargetDir)) {
    Write-Host '[-] Directory not found: ' -NoNewline -ForegroundColor 'Red'
    Write-Host $Dir -ForegroundColor 'Red'
    exit 1
}

Set-Location $TargetDir

Write-Host '=================================================' -ForegroundColor 'Cyan'
Write-Host '  HCMUT-DEE Thesis Kit — Compiler' -ForegroundColor 'Yellow'
Write-Host '  File: ' -NoNewline -ForegroundColor 'Yellow'
Write-Host "$Dir/$File.tex" -ForegroundColor 'Yellow'
Write-Host '=================================================' -ForegroundColor 'Cyan'

function Check-Error {
    param([string]$Step)
    if (Test-Path "$File.log") {
        $Fatal = (Select-String -Path "$File.log" -Pattern 'Fatal error|Emergency stop' | Measure-Object).Count
        if ($Fatal -gt 0) {
            Write-Host '[-] FATAL ERROR at step: ' -NoNewline -ForegroundColor 'Red'
            Write-Host $Step -ForegroundColor 'Red'
            Write-Host '[!] Check ' -NoNewline -ForegroundColor 'Yellow'
            Write-Host "$File.log for details" -ForegroundColor 'Yellow'
            Set-Location $OriginalDir
            exit 1
        }
    }
}

Write-Host ''
Write-Host '[1/4] pdflatex pass 1...' -ForegroundColor 'Green'
pdflatex -interaction=nonstopmode "$File.tex" | Out-Null
Check-Error 'pdflatex 1'

Write-Host '[2/4] bibtex...' -ForegroundColor 'Green'
bibtex "$File" 2>&1 | Out-Null

Write-Host '[3/4] pdflatex pass 2...' -ForegroundColor 'Green'
pdflatex -interaction=nonstopmode "$File.tex" | Out-Null
Check-Error 'pdflatex 2'

Write-Host '[4/4] pdflatex pass 3...' -ForegroundColor 'Green'
pdflatex -interaction=nonstopmode "$File.tex" | Out-Null
Check-Error 'pdflatex 3'

# Summary
$Undef = 0; $Missing = 0
if (Test-Path "$File.log") {
    $Undef = (Select-String -Path "$File.log" -Pattern 'undefined' | Measure-Object).Count
    $Missing = (Select-String -Path "$File.log" -Pattern 'File.*not found' | Measure-Object).Count
}

Write-Host ''
Write-Host '=================================================' -ForegroundColor 'Cyan'
Write-Host '  COMPILATION SUCCESSFUL!' -ForegroundColor 'Green'
Write-Host '  Output: ' -NoNewline -ForegroundColor 'Green'
Write-Host "$Dir/$File.pdf" -ForegroundColor 'Green'
Write-Host '  Undefined refs: ' -NoNewline -ForegroundColor 'Yellow'
Write-Host $Undef -ForegroundColor 'Yellow'
Write-Host '  Missing files:  ' -NoNewline -ForegroundColor 'Yellow'
Write-Host $Missing -ForegroundColor 'Yellow'
Write-Host '=================================================' -ForegroundColor 'Cyan'

Set-Location $OriginalDir
