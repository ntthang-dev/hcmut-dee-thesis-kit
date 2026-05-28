# 📘 HCMUT-DEE Thesis Kit

> **Template LaTeX đồ án tốt nghiệp** — Khoa Điện - Điện Tử, Đại học Bách Khoa TP. Hồ Chí Minh

[![Version](https://img.shields.io/badge/version-v2.0.4-blue)]()
[![License](https://img.shields.io/badge/license-MIT-green)]()
[![Overleaf](https://img.shields.io/badge/Overleaf-compatible-success)]()
[![LaTeX](https://img.shields.io/badge/LaTeX-pdfLaTeX-orange)]()

---

## 📖 Giới thiệu

**HCMUT-DEE Thesis Kit** là bộ template LaTeX hoàn chỉnh dành cho sinh viên ngành Kỹ thuật Điện, Khoa Điện - Điện Tử, Trường Đại học Bách Khoa TP. HCM. Template bao gồm:

- ✅ **Trang bìa, nhiệm vụ, tờ chấm** — tự động sinh từ thông tin sinh viên
- ✅ **Chuẩn trích dẫn IEEE** — sẵn sàng cho bài báo khoa học
- ✅ **Code highlighting** — Python, MATLAB, C/C++, PLC Structured Text
- ✅ **Slide Beamer** — template bảo vệ đồ án kèm theo
- ✅ **AI Prompts** — hướng dẫn sử dụng AI hỗ trợ viết đồ án
- ✅ **Tương thích** — Overleaf, TeXStudio, VS Code

---

## 🚀 Quick Start (Bắt đầu nhanh)

### Bước 1: Tải template
```bash
git clone https://github.com/ntthang-dev/hcmut-dee-thesis-kit
# Hoặc: Download ZIP → Giải nén
```

### Bước 2: Chỉnh thông tin cá nhân
Mở `thesis/thesis.tex` và sửa phần **THÔNG TIN SINH VIÊN**:
```latex
\ThesisTitle{Tên đề tài tiếng Việt}
\ThesisTitleEN{Thesis Title in English}
\StudentName{Họ Tên Sinh Viên}
\StudentID{21xxxxx}
\Supervisor{TS. Nguyễn Văn B}
```

### Bước 3: Biên dịch
```bash
cd thesis
pdflatex thesis.tex
bibtex thesis
pdflatex thesis.tex
pdflatex thesis.tex
```
Hoặc trên **Overleaf**: Upload folder `thesis/` → nhấn Recompile.

---

## 📂 Cấu trúc thư mục

```
HCMUT-DEE-Thesis-Kit/
│
├── thesis/                        📄 Đồ án tốt nghiệp
│   ├── thesis.tex                 ← File chính (biên dịch file này)
│   ├── hcmut-dee.cls              ← Class file (KHÔNG chỉnh sửa)
│   ├── references.bib             ← Tài liệu tham khảo
│   ├── front-matter/              ← Phần đầu
│   │   ├── acknowledgment.tex        Lời cảm ơn
│   │   ├── abstract-vi.tex           Tóm tắt tiếng Việt
│   │   ├── abstract-en.tex           Abstract tiếng Anh
│   │   └── abbreviations.tex         Danh mục viết tắt
│   ├── chapters/                  ← Nội dung các chương
│   │   ├── chapter1.tex ... chapter6.tex
│   ├── appendices/                ← Phụ lục
│   │   └── appendix-sample.tex
│   └── figures/                   ← Hình ảnh
│       ├── logos/                    Logo trường
│       └── examples/                Hình minh họa
│
├── slides/                        🎬 Slide bảo vệ (Beamer)
│   ├── main.tex
│   ├── references.bib
│   └── images/                    Hình nền slide
│
├── scripts/                       ⚙️ Script tiện ích
│   ├── compile.ps1                   PowerShell (Windows)
│   ├── compile.sh                    Bash (Linux/Mac)
│   └── clean.py                      Dọn file rác (Python)
│
├── prompts/                       🤖 AI Prompt hỗ trợ viết
│   └── ai-writing-prompt.md
│
├── README.md                      ← Bạn đang đọc file này
├── LICENSE                        ← MIT License
└── CHANGELOG.md                   ← Lịch sử phiên bản
└── thesis-tool.exe                ← CLI hỗ trợ làm việc
```

---

## 📝 Danh sách lệnh

### Lệnh bắt buộc
| Lệnh | Ý nghĩa | Ví dụ |
|-------|---------|-------|
| `\ThesisTitle{}` | Tên đề tài (tiếng Việt) | `\ThesisTitle{Tối ưu hóa...}` |
| `\ThesisTitleEN{}` | Tên đề tài (tiếng Anh) | `\ThesisTitleEN{Optimization...}` |
| `\StudentName{}` | Họ tên sinh viên | `\StudentName{Nguyễn Văn A}` |
| `\StudentID{}` | Mã số sinh viên | `\StudentID{123456}` |
| `\StudentClass{}` | Lớp | `\StudentClass{xxxxxxxx}` |
| `\Major{}` | Ngành (mặc định: Kỹ thuật Điện) | `\Major{Kỹ thuật Điện}` |
| `\Supervisor{}` | GVHD | `\Supervisor{TS. Nguyễn Văn B}` |

### Lệnh tùy chọn
| Lệnh | Mặc định |
|-------|---------|
| `\Faculty{}` | Khoa Điện - Điện Tử |
| `\ReportType{}` | ĐỒ ÁN TỐT NGHIỆP |
| `\ThesisMonth{}` | Tháng hiện tại |
| `\ThesisYear{}` | Năm hiện tại |
| `\AssignDate{d}{m}{y}` | (trống) |
| `\DueDate{d}{m}{y}` | (trống) |
| `\Reviewer{}` | (trống) |
| `\CouncilChair{}` | (trống) |
| `\SupervisorPercent{}` | 100% |

### Lệnh tự động sinh trang
| Lệnh | Trang được tạo |
|-------|---------------|
| `\makecover` | Trang bìa |
| `\makeassignment` | Trang nhiệm vụ (FL012) |
| `\makeevaluation` | Tờ chấm |

### Công cụ dòng lệnh (CLI - Thesis Tool)
Bộ mẫu nay đã đi kèm công cụ `thesis-tool.exe` nhỏ gọn, hỗ trợ thao tác nhanh chóng:
- `thesis-tool build`: Tự động biên dịch toàn bộ dự án (`pdflatex` → `bibtex` → `pdflatex` ×2)
- `thesis-tool clean`: Dọn dẹp file rác (`.aux, .log, .toc, .bbl...`)
- `thesis-tool info`: Xem thông tin chi tiết của bộ template
- `thesis-tool help`: Xem hướng dẫn sử dụng công cụ
- `thesis-tool version`: Xem phiên bản

### Listing styles (chèn code)
| Style | Ngôn ngữ |
|-------|---------|
| `pythonstyle` | Python |
| `matlabstyle` | MATLAB |
| `cstyle` | C/C++ |
| `plcstyle` | PLC Structured Text (IEC 61131-3) |
| `latexstyle` | LaTeX |

---

## 🖥️ Hướng dẫn chi tiết

### Overleaf
1. Nén folder `thesis/` thành file `.zip`
2. Truy cập [overleaf.com](https://overleaf.com) → New Project → Upload Project
3. Menu → Main document: `thesis.tex`, Compiler: `pdfLaTeX`
4. Nhấn Recompile

### TeXStudio (Windows)
1. Cài [MiKTeX](https://miktex.org/download) (tick "Install packages on the fly")
2. Cài [TeXStudio](https://www.texstudio.org/)
3. Mở `thesis/thesis.tex` → F5 (Build & View)

### VS Code
1. Cài [TeX Live](https://www.tug.org/texlive/)
2. Cài extension **LaTeX Workshop**
3. Mở folder `thesis/` → Ctrl+Alt+B

---

## ❓ FAQ

<details>
<summary><b>1. Lỗi "Undefined control sequence"?</b></summary>
Kiểm tra chính tả lệnh LaTeX. Nếu đúng, có thể thiếu package — class file đã load sẵn hầu hết.
</details>

<details>
<summary><b>2. Font tiếng Việt bị lỗi?</b></summary>
Đảm bảo file .tex lưu UTF-8, dùng option [vietnamese] trong documentclass.
</details>

<details>
<summary><b>3. Overleaf bị timeout?</b></summary>
Nén hình ảnh, dùng \input thay \include, comment tạm chương chưa viết.
</details>

<details>
<summary><b>4. Bảng tràn lề?</b></summary>
Dùng tabularx với cột X tự co giãn, hoặc xoay ngang bằng landscape.
</details>

<details>
<summary><b>5. Muốn in 2 mặt?</b></summary>
Đổi thành: `\documentclass[vietnamese, twoside, openright]{hcmut-dee}`
</details>

<details>
<summary><b>6. Tôi có thể dùng cho ngành khác không?</b></summary>
Có! Chỉ cần đổi \Faculty{} và \Major{} trong thesis.tex.
</details>

<details>
<summary><b>7. Muốn thêm chương?</b></summary>
Tạo file chapter7.tex trong chapters/, thêm \input{chapters/chapter7} trong thesis.tex.
</details>

<details>
<summary><b>8. Dùng XeLaTeX được không?</b></summary>
Template thiết kế cho pdfLaTeX. Nếu dùng XeLaTeX, cần chỉnh encoding và font.
</details>

<details>
<summary><b>9. Tài liệu tham khảo không hiện?</b></summary>
Cần chạy bibtex: pdflatex → bibtex → pdflatex × 2.
</details>

<details>
<summary><b>10. Muốn thay đổi lề trang?</b></summary>
Chỉnh trong hcmut-dee.cls phần GEOMETRY (không khuyến khích — lề hiện tại đã đúng chuẩn).
</details>

---

## 🔧 Đóng góp & Phát triển

Template sử dụng **Semantic Versioning (SemVer)**:
- **MAJOR** (ví dụ 3.0.0): Thay đổi lớn, không tương thích ngược
- **MINOR** (ví dụ 2.1.0): Thêm tính năng, tương thích ngược
- **PATCH** (ví dụ 2.0.4): Sửa lỗi, chỉnh sửa nhỏ

Muốn đóng góp? Tạo **Issue** hoặc **Pull Request** trên GitHub.
Nếu cần liên hệ để cải tiến, sửa lỗi, hoặc góp ý cho template, vui lòng liên hệ qua email: **ntthang.dev@gmail.com**.

---

## 📄 Bản quyền & Tín nhiệm

```
© 2026 Nguyễn Trọng Thắng (K19 - Hệ thống điện, Kỹ thuật Điện)
      & TS. Nguyễn Phúc Khải (đồng tác giả)

Khoa Điện - Điện Tử
Trường Đại học Bách Khoa TP. Hồ Chí Minh (ĐHQG-HCM)

Tặng các Thầy Cô Bộ môn Hệ thống điện (cũ)
Ngành Kỹ thuật Điện — Khoa Điện - Điện Tử
```

**License:** MIT — Tự do sử dụng, chỉnh sửa, phân phối với điều kiện giữ nguyên thông tin bản quyền.

---

## 🌍 English Overview

**HCMUT-DEE Thesis Kit** is a comprehensive LaTeX template for undergraduate thesis (Đồ Án Tốt Nghiệp) at the Faculty of Electrical & Electronics Engineering, Ho Chi Minh City University of Technology (HCMUT), Vietnam National University.

**Features:** Auto-generated cover/assignment/evaluation pages, IEEE citation style, syntax highlighting for Python/MATLAB/C++/PLC, Beamer slides, AI writing prompts, Overleaf-compatible.

**Quick Start:** Edit `thesis/thesis.tex` → Set your info → Compile with pdfLaTeX.

**License:** MIT
