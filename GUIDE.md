# 📖 Hướng Dẫn Sử Dụng Chi Tiết — HCMUT-DEE Thesis Kit
### Bộ Template LaTeX Luận Văn & Đồ Án Tốt Nghiệp Chuẩn Khoa Điện - Điện Tử (ĐHBK TP.HCM)
#### Tác giả: Nguyễn Trọng Thắng (K19 - Hệ thống điện) & TS. Nguyễn Phúc Khải
#### Bản quyền: MIT License | Phiên bản: v2.0.4

---

Chào mừng các bạn sinh viên Khoa Điện - Điện tử, Trường Đại học Bách Khoa - ĐHQG TP. Hồ Chí Minh đã đến với **HCMUT-DEE Thesis Kit**. Đây là bộ công cụ học thuật hoàn chỉnh được thiết kế và tinh chỉnh tối ưu giúp các bạn dễ dàng soạn thảo luận văn, đồ án tốt nghiệp bằng ngôn ngữ định dạng chuyên nghiệp **LaTeX** mà không cần tốn nhiều thời gian thiết kế định dạng từ đầu.

Tài liệu này hướng dẫn chi tiết cách cài đặt, cấu trúc thư mục, quy trình biên dịch và các tính năng nâng cao có sẵn trong bộ Kit.

---

## 🗺️ Bản Đồ Thư Mục Dự Án (Folder Structure)

Bộ Kit được thiết kế theo hướng **mô-đun hóa** tối đa để dễ dàng quản lý và tránh xung đột mã nguồn. Dưới đây là cấu trúc các tệp tin quan trọng:

```text
HCMUT-DEE-Thesis-Kit/
├── thesis/                       # Thư mục chứa báo cáo chính thức
│   ├── hcmut-dee.cls             # File class quyết định toàn bộ thiết kế, font, lề, khung bìa...
│   ├── thesis.tex                # File nhập điểm đầu (chỉ sửa thông tin SV ở đây)
│   ├── thesis.pdf                # PDF kết quả biên dịch
│   ├── references.bib            # Cơ sở dữ liệu tài liệu tham khảo (BibTeX)
│   ├── front-matter/             # Các trang biểu mẫu và nội dung hành chính đầu trang
│   │   ├── acknowledgment.tex    # Lời cảm ơn (đã căn chỉnh vừa gọn trong 1 trang)
│   │   ├── abstract-vi.tex       # Tóm tắt tiếng Việt (có giới thiệu bản quyền)
│   │   ├── abstract-en.tex       # Abstract tiếng Anh
│   │   ├── abstract-fr.tex       # Résumé tiếng Pháp (mới bổ sung)
│   │   └── abbreviations.tex     # Bảng ký hiệu và danh mục chữ viết tắt
│   ├── chapters/                 # Thư mục chứa nội dung chính các chương
│   │   ├── chapter1.tex          # Giới thiệu & Hướng dẫn cài đặt
│   │   ├── chapter2.tex          # Soạn thảo văn bản LaTeX cơ bản
│   │   ├── chapter3.tex          # Hình ảnh (có chèn ảnh AI), bảng biểu, công thức
│   │   ├── chapter4.tex          # Trích dẫn tài liệu tham khảo chuẩn IEEE
│   │   ├── chapter5.tex          # Mẫu chèn mã nguồn (Python, Matlab, C, PLC)
│   │   └── chapter6.tex          # Giải đáp thắc mắc (FAQ) & Sửa lỗi thường gặp
│   ├── appendices/               # Thư mục chứa các phần phụ lục bổ sung
│   │   ├── appendix-sample.tex   # Phụ lục A: Nội dung phụ trợ
│   │   └── appendix-commands.tex # Phụ lục B: Toàn bộ danh sách lệnh và cách dùng của bộ kit
│   └── figures/                  # Chứa toàn bộ logo trường, khoa và hình vẽ minh họa
│
├── slides/                       # Thư mục chứa Slide thuyết trình bảo vệ (Beamer)
│   ├── main.tex                  # File slide chính (Madrid theme, tỷ lệ 16:9, tông xanh BKBlue)
│   ├── references.bib            # Tài liệu tham khảo cho slide
│   └── images/                   # Hình nền trang bìa và logo phụ trợ cho slide
│
├── scripts/                      # Các kịch bản biên dịch tự động offline
│   ├── compile.ps1               # Script PowerShell 4 bước biên dịch cho Windows
│   ├── compile.sh                # Script Bash 4 bước biên dịch cho macOS/Linux
│   └── clean.py                  # Script Python dọn dẹp file trung gian rác (.aux, .log, .toc...)
│
├── prompts/                      # Thư viện Prompts hỗ trợ học tập
│   └── ai-writing-prompt.md      # Prompt hướng dẫn sinh viên viết văn phong học thuật bằng AI
│
├── README.md                     # Hướng dẫn nhanh dự án chuẩn GitHub
├── LICENSE                       # Giấy phép bản quyền MIT bảo vệ quyền tác giả
└── CHANGELOG.md                  # Nhật ký ghi nhận lịch sử nâng cấp (SemVer)
```

---

## 🚀 Hướng Dẫn Bắt Đầu Nhanh (Quick Start)

### Cách A: Sử dụng online trên Overleaf (Khuyên Dùng)
1. Tải toàn bộ thư mục dự án này về máy dưới dạng tệp nén `.zip` (hoặc nén riêng thư mục `thesis/` thành một file `.zip`).
2. Truy cập [Overleaf](https://www.overleaf.com), đăng nhập tài khoản sinh viên.
3. Nhấp chọn **New Project** -> **Upload Project**, rồi kéo thả file `.zip` vừa nén vào.
4. Mở file `thesis.tex` và nhấn nút **Recompile** (hoặc nhấn `Ctrl + Enter`) để trình biên dịch đám mây tự động build file PDF.

### Cách B: Sử dụng Offline trên Máy Tính cá nhân (Windows/macOS/Linux)
1. **Cài đặt trình biên dịch LaTeX**:
   - **Windows**: Cài đặt [MiKTeX](https://miktex.org/download) (chọn bản cài đặt đầy đủ).
   - **macOS**: Cài đặt [MacTeX](https://www.tug.org/mactex/).
   - **Linux**: Cài đặt gói `texlive-full` qua terminal (`sudo apt install texlive-full`).
2. **Cài đặt IDE soạn thảo**:
   - Khuyên dùng **VS Code** với extension **LaTeX Workshop** (rất mạnh mẽ, hiện đại).
   - Hoặc cài đặt **TeXstudio** (đơn giản, dễ dùng, trực quan).
3. Mở thư mục `thesis/` bằng phần mềm soạn thảo, chọn tệp `thesis.tex` làm tài liệu gốc (Set as Master Document/Active Document) và tiến hành biên dịch.

---

## 🛠️ Quy Trình Biên Dịch 4 Bước Tiêu Chuẩn

Để danh mục tài liệu tham khảo, số thứ tự hình vẽ/bảng biểu và mục lục tự động được cập nhật chính xác, tài liệu LaTeX bắt buộc phải trải qua quy trình biên dịch 4 bước:

1. **Lần 1**: Biên dịch tài liệu chính để nhận diện cấu trúc tệp.
   ```bash
   pdflatex thesis.tex
   ```
2. **Lần 2**: Biên dịch tài liệu tham khảo từ file `.bib` thông qua BibTeX.
   ```bash
   bibtex thesis
   ```
3. **Lần 3**: Liên kết các mã số trích dẫn ngược lại vào văn bản chính.
   ```bash
   pdflatex thesis.tex
   ```
4. **Lần 4**: Hoàn thiện liên kết chéo và chèn chỉ số số trang chính xác vào trang Mục lục.
   ```bash
   pdflatex thesis.tex
   ```

*Mẹo: Nếu sử dụng VS Code hoặc Overleaf, các IDE này đã được cấu hình tự động chạy chuỗi 4 bước trên. Nếu sử dụng terminal offline, bạn chỉ cần chạy script chạy tự động trong thư mục `scripts/`:*
```powershell
# Trên Windows PowerShell:
.\scripts\compile.ps1
```

---

## ✍️ Các Bước Chỉnh Sửa Luận Văn Cho Học Viên

Sinh viên chỉ cần chỉnh sửa nội dung và không cần lo lắng về bố cục trang bìa hay tờ chấm:

### Bước 1: Khai báo Thông Tin Cá Nhân (Metadata)
Mở tệp [thesis/thesis.tex](file:///d:/LaTeX/HCMUT_THESIS_TEMPLATE/bao_Cao_luan_van-main/thesis/thesis.tex), tìm khối lệnh **THÔNG TIN SINH VIÊN** (dòng 23-60) để khai báo các thông tin cá nhân bắt buộc:
```latex
\ThesisTitle{Tên đề tài bằng tiếng Việt của bạn}
\ThesisTitleEN{Your Thesis Title in English}
\StudentName{Nguyễn Văn A}
\StudentID{xxxxxxx}
\StudentClass{DDxxKTDxx}
\Major{Kỹ thuật Điện}
\Supervisor{TS. Nguyễn Văn B}
```

*Để hiển thị tên các thầy cô trong Hội đồng chấm bảo vệ trên trang Tờ chấm điểm hành chính, bạn chỉ cần bỏ các dấu comment `%` ở trước 5 câu lệnh Hội đồng:*
```latex
\CouncilMemberOne{PGS. TS. Lê Văn D}        % Chủ tịch Hội đồng
\CouncilMemberTwo{TS. Nguyễn Văn E}         % Ủy viên / Thư ký
\CouncilMemberThree{TS. Phạm Văn F}        % Ủy viên
\CouncilMemberFour{ThS. Đỗ Văn G}           % Ủy viên
\CouncilMemberFive{ThS. Trần Văn H}         % Ủy viên
```

### Bước 2: Chuốt Lời Cảm Ơn & Tóm Tắt
*   **Lời cảm ơn**: Chỉnh sửa tại tệp `front-matter/acknowledgment.tex`. Hãy giữ nguyên lời cảm ơn tôn vinh Khoa, Bộ môn và hướng dẫn trích dẫn mã nguồn bộ Kit ở cuối trang để thể hiện tinh thần truyền thừa thế hệ.
*   **Tóm tắt**: Chỉnh sửa tại 3 tệp `front-matter/abstract-vi.tex` (tiếng Việt), `front-matter/abstract-en.tex` (tiếng Anh) và `front-matter/abstract-fr.tex` (tiếng Pháp).

### Bước 3: Soạn Thảo Nội Dung Các Chương
Các chương nội dung đã được chia sẵn thành các tệp tin độc lập từ `chapter1.tex` đến `chapter6.tex` trong thư mục `chapters/`. Bạn chỉ cần viết tiếp nội dung bên dưới mỗi file chương. 
*Nếu muốn thêm một chương mới (Ví dụ: Chương 7):*
1. Tạo một tệp mới tên `chapter7.tex` trong thư mục `chapters/`.
2. Khai báo tiêu đề chương ở dòng đầu: `\chapter{Tên Chương Mới}\label{ch:chuong-moi}`.
3. Quay lại file `thesis.tex`, chèn thêm dòng sau ngay dưới dòng gọi Chương 6:
   ```latex
   \input{chapters/chapter7}
   ```

### Bước 4: Trích Dẫn & Thêm Tài Liệu Tham Khảo
Để thêm các tài liệu trích dẫn mới:
1. Mở file [thesis/references.bib](file:///d:/LaTeX/HCMUT_THESIS_TEMPLATE/bao_Cao_luan_van-main/thesis/references.bib).
2. Lấy định dạng trích dẫn **BibTeX** từ Google Scholar hoặc các trang học thuật uy tín và dán vào file `.bib`.
3. Khi viết nội dung, thực hiện gọi trích dẫn bằng lệnh: `\cite{key_tai_lieu}`. Ví dụ: `\cite{ho2005hethongdien}`.

---

## 💎 Các Tính Năng Độc Quyền & Nâng Cao trong Lớp `hcmut-dee`

Bộ Kit cung cấp sẵn nhiều cải tiến vượt bậc so với các template thông thường khác:

### 1. Khung Viền Hoa Văn Bách Khoa Độc Quyền (`\makecover`)
Tự động sinh trang bìa có hoa văn viền đôi chuẩn quy chuẩn của ĐH Bách Khoa bằng thư viện đồ họa vector chuyên sâu `TikZ` mà không cần chèn file hình viền bên ngoài (tránh lỗi méo khung viền khi biên dịch trên các hệ thống khác nhau).

### 2. Biểu Mẫu Nhiệm Vụ Khóa Luận Chuẩn FL012 (`\makeassignment`)
Thiết lập trang giao Nhiệm vụ khóa luận theo form hành chính mã số **FL012** chính thức, có bảng phân chia tỷ lệ hướng dẫn của GVHD và khung ký tên chuyên nghiệp.

### 3. Tờ Chấm Điểm Hội Đồng Linh Hoạt (`\makeevaluation`)
Nếu 5 lệnh hội đồng (`\CouncilMemberOne`...) được điền tên cụ thể, hệ thống sẽ tự động in đậm họ tên các thầy cô lên biểu mẫu chấm điểm. Nếu bỏ trống, hệ thống sẽ tự động kẻ các hàng chấm chấm điền tay thông minh (`\dotfill`) giúp hội đồng ghi trực tiếp bằng bút mực.

### 4. Lệnh Lấy Dữ Liệu An Toàn (Public Getters)
Giúp sinh viên chèn động tên của mình hoặc tiêu đề đồ án vào bất kỳ vị trí nào trong văn bản mà không lo bị dính lỗi ký tự đặc biệt `@` của hệ thống:
*   `\getStudentName` hiển thị tên sinh viên thực hiện.
*   `\getThesisTitle` hiển thị tiêu đề luận văn.
*   `\getSupervisor` hiển thị giảng viên hướng dẫn.

### 5. Hệ Thống Định Dạng Mã Nguồn Tối Ưu (Listing Styles)
Thiết lập sẵn 5 môi trường định dạng code listings cực kỳ đẹp mắt và có highlight từ khóa chi tiết dành riêng cho ngành Điện - Điện tử:
*   `style=pythonstyle` (Python)
*   `style=matlabstyle` (MATLAB)
*   `style=cstyle` (Ngôn ngữ C/C++ nhúng)
*   `style=plcstyle` (Structured Text PLC IEC 61131-3)
*   `style=latexstyle` (Các thẻ lệnh LaTeX)

### 6. Tự Động Thiết Lập PDF Metadata Bản Quyền
File PDF sau khi xuất ra sẽ tự động gắn Metadata bảo mật, lưu trữ thông tin bản quyền và giấy phép của Nguyễn Trọng Thắng & TS. Nguyễn Phúc Khải cùng các từ khóa tìm kiếm tiếng Việt hỗ trợ Unicode đầy đủ.

---

## 🛡️ Liêm Chính Học Thuật Khi Sử Dụng Hình Ảnh AI (GenAI Image citing)
Khi sinh viên sử dụng các công cụ trí tuệ nhân tạo (như Midjourney, Stable Diffusion, DALL-E, Nano Banana...) để vẽ hoặc sinh hình ảnh minh họa cho luận văn, kit yêu cầu bắt buộc phải đảm bảo tính liêm chính bằng cách bổ sung footnote chỉ dẫn chi tiết:
1. Ghi rõ mô hình sinh ảnh đã sử dụng (Model version).
2. Công bố đầy đủ câu lệnh điều khiển (Prompt) đã dùng để vẽ ảnh đó.

---

## 📜 Thông Tin Bản Quyền & Trích Dẫn Bộ Kit

Bộ template **HCMUT-DEE Thesis Kit** được phân phối hoàn toàn miễn phí theo giấy phép mã nguồn mở **MIT License**. Sinh viên có toàn quyền tự do sao chép, chỉnh sửa và phân phối lại cho các khóa sau, với điều kiện giữ nguyên thông tin bản quyền gốc ở đầu tệp `hcmut-dee.cls` và `thesis.tex`.

Để ủng hộ tác giả duy trì và cập nhật bộ kit ngày một hoàn thiện hơn, các bạn sinh viên vui lòng:
1. ⭐️ **Tặng 1 Star** trên GitHub repository chính thức: [github.com/ntthang-dev/hcmut-dee-thesis-kit](https://github.com/ntthang-dev/hcmut-dee-thesis-kit) *(hoặc ntthang-dev tùy thuộc tên repo được thiết lập)*.
2. 📝 **Trích dẫn bộ kit** trong danh mục tài liệu tham khảo theo chuẩn IEEE:
   > N. T. Thắng và N. P. Khải, "HCMUT-DEE Thesis Kit: Bộ template LaTeX luận văn tốt nghiệp Khoa Điện - Điện tử," 2026, GitHub Repository. [Online]. Available: https://github.com/ntthang-dev/hcmut-dee-thesis-kit

Nếu cần liên hệ để cải tiến, sửa lỗi, hoặc góp ý cho template, vui lòng liên hệ qua email: **ntthang.dev@gmail.com**.
