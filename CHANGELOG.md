# Changelog — HCMUT-DEE Thesis Kit

Tất cả thay đổi quan trọng sẽ được ghi nhận tại đây.
Format theo [Keep a Changelog](https://keepachangelog.com/).
Versioning theo [Semantic Versioning](https://semver.org/).

---

## [2.0.4] - 2026-05-28

### ✨ Added (Thêm mới)
- Tích hợp công cụ dòng lệnh `thesis-tool.exe` (viết bằng Golang) giúp tự động hóa quá trình biên dịch (build), dọn dẹp (clean) và xem thông tin (info) mà không cần cài đặt môi trường.
- Bổ sung lệnh chèn tên thành viên Hội đồng đánh giá trong tờ chấm (`\CouncilMemberOne`, v.v.).
- Bổ sung Phụ lục C hướng dẫn sử dụng công cụ CLI.
- Cập nhật hướng dẫn ghi chú bản quyền AI sinh ảnh.
- Cập nhật hướng dẫn trích dẫn IEEE và BiberTex/BibTex.
- Cấu hình siêu dữ liệu (PDF Metadata) và bản quyền tự động, cấu hình màu sắc hyperlink.

### 🔄 Changed (Thay đổi)
- Đổi tên file gốc `main.tex` thành `thesis.tex` cho chuẩn mực và bớt gây nhầm lẫn với các file khác.
- Đóng gói mã nguồn CLI để chỉ public file `.exe`, ẩn hoàn toàn thư mục và file `.go`.
- Cập nhật tài liệu hướng dẫn (`README.md`, `GUIDE.md`, `GUILDE.md`).

---

## [2.0.3] - 2026-05-10

### ✨ Added (Thêm mới)
- Class file `hcmut-dee.cls` viết lại hoàn toàn từ đầu
- Semantic commands: `\ThesisTitle`, `\StudentName`, `\StudentID`, v.v.
- Tự động sinh trang bìa (`\makecover`), nhiệm vụ (`\makeassignment`), tờ chấm (`\makeevaluation`)
- Listing styles cho Python, MATLAB, C/C++, PLC Structured Text
- Hỗ trợ đa ngôn ngữ: `[vietnamese]`, `[english]`, `[french]`
- Template slide Beamer cho bảo vệ đồ án
- Script biên dịch: PowerShell, Bash, Python clean
- AI writing prompts cho ChatGPT/Gemini/Claude
- Nội dung 6 chương hướng dẫn sử dụng template
- README chuẩn quốc tế với FAQ

### 🔄 Changed (Thay đổi)
- Tái cấu trúc hoàn toàn thư mục dự án
- Đổi tên class: `hcmut-thesis` → `hcmut-dee`
- Chuyển từ `memoir` class sang `report` class (tương thích Overleaf)
- Gộp `preamble.tex` vào class file
- Chuyển "Bộ môn" → "Chủ trì ngành" theo cơ cấu mới
- Cập nhật "luận văn" → "đồ án tốt nghiệp"

### 🗑️ Removed (Xóa)
- Nội dung đồ án chuyên ngành (IEEE 33/69 bus data)
- File hình ảnh kết quả mô phỏng (~72 files)
- File PDF luận văn gốc (~39 MB)
- `preamble.tex` (đã gộp vào cls)
- Slide HTML và PPTX gốc
- README cũ (của MIT thesis template)

---

## [2.0.2] - 2026-01-07

### 🔄 Thay đổi các chi tiết template cho tặng

- Tiến hành modify sửa chửa template để tặng sinh viên sử dụng và làm luận văn.

---

## [2.0.1] - 2025-12-31

### 🎓 Third Release (Thêm trang bìa mới)
- Phiên bản đồ án tốt nghiệp của Nguyễn Trọng Thắng
- Ngành: Kỹ thuật Điện (Hệ thống điện), K19
- Đề tài: Đề xuất các thuật toán học máy phân loại khách hàng sử dụng điện trong hệ đa thuộc tính.
- GVHD: TS. Nguyễn Phúc Khải

---

## [2.0.0] - 2025-05-30

### 🎓 Second Release (Change Template Format)
- Phiên bản đồ án 2 của Nguyễn Trọng Thắng
- Ngành: Kỹ thuật Điện (Hệ thống điện), K19
- Đề tài: Mô hình Phân cụm Đa chiếu Hợp nhất cho Dữ liệu Chuỗi thời gian: Tích hợp Tính Bất biến hình dạng và Bền vững trước ngoại lai.
- GVHD: TS. Nguyễn Phúc Khải

---

## [1.0.0] - 2024-09-02

### 🎓 Initial Release
- Phiên bản đồ án 1 gốc của Nguyễn Trọng Thắng
- Ngành: Kỹ thuật Điện (Hệ thống điện), K19

