# 🤖 AI Writing Prompts — HCMUT-DEE Thesis Kit v2.0.3

> Tài liệu hướng dẫn sử dụng AI (ChatGPT, Gemini, Claude) để hỗ trợ viết đồ án tốt nghiệp.
> **© 2026 Nguyễn Trọng Thắng & TS. Nguyễn Phúc Khải**

---

## 📋 System Prompt (Dán vào Custom Instructions)

Dán đoạn sau vào phần "System Instructions" hoặc "Custom Instructions" của AI:

```
Bạn là trợ lý viết đồ án tốt nghiệp cho sinh viên Khoa Điện - Điện Tử, Đại học Bách Khoa TP. HCM. Quy tắc:

1. Viết bằng tiếng Việt, văn phong học thuật.
2. Output là mã LaTeX sẵn sàng paste vào file .tex.
3. Template: HCMUT-DEE Thesis Kit v2.0.3 (class: hcmut-dee).
4. Trích dẫn: dùng \cite{key} với style IEEE.
5. Hình ảnh: dùng \begin{figure}[H]...\end{figure}.
6. Bảng: dùng booktabs (\toprule, \midrule, \bottomrule).
7. Công thức: dùng \begin{equation}...\end{equation} hoặc \begin{align}.
8. KHÔNG dùng package ngoài (cls đã load sẵn tất cả).
9. KHÔNG viết \documentclass hay \begin{document}.
10. Đặt \label{} cho mọi hình, bảng, công thức, mục.
```

---

## 🎯 Prompt Mẫu Theo Chức Năng

### 1. Viết phần Mở đầu (Chương 1)

```
Viết phần mở đầu (Chương 1) cho đồ án tốt nghiệp với đề tài: "[TÊN ĐỀ TÀI]".

Bao gồm các section:
- \section{Đặt vấn đề}: Tính cấp thiết, bối cảnh
- \section{Mục tiêu đồ án}: 3-4 mục tiêu cụ thể
- \section{Phạm vi nghiên cứu}: Giới hạn đề tài
- \section{Phương pháp nghiên cứu}: Phương pháp sử dụng
- \section{Bố cục đồ án}: Tóm tắt nội dung các chương

Output LaTeX, sẵn sàng paste vào chapter1.tex.
```

### 2. Tạo bảng so sánh

```
Tạo bảng so sánh các phương pháp [TÊN PHƯƠNG PHÁP] trong LaTeX.

Yêu cầu:
- Dùng booktabs (toprule, midrule, bottomrule)
- Các cột: Phương pháp, Ưu điểm, Nhược điểm, Độ phức tạp
- Có \caption và \label{tab:...}
- Đặt trong \begin{table}[H]
```

### 3. Viết Abstract tiếng Anh

```
Dịch đoạn tóm tắt sau sang tiếng Anh, văn phong học thuật:

[DÁN TÓM TẮT TIẾNG VIỆT]

Output LaTeX cho file abstract-en.tex, bắt đầu từ nội dung
(không cần \chapter*{ABSTRACT}).
```

### 4. Tạo entry BibTeX từ thông tin

```
Tạo entry BibTeX chuẩn IEEE cho bài báo sau:
- Tên: [TÊN BÀI BÁO]
- Tác giả: [TÊN TÁC GIẢ]
- Tạp chí/Conference: [TÊN]
- Năm: [NĂM]
- DOI: [DOI nếu có]

Đặt citation key theo format: ho_tacgia + nam + keyword.
```

### 5. Viết thuật toán (algorithm2e)

```
Viết pseudocode cho thuật toán [TÊN THUẬT TOÁN] bằng LaTeX
dùng package algorithm2e.

Yêu cầu:
- Dùng \begin{algorithm}[H]...\end{algorithm}
- Có \KwIn, \KwOut
- Dùng \For, \If, \While phù hợp
- Có \caption và \label{alg:...}
```

### 6. Giải thích và viết công thức

```
Giải thích và viết công thức [TÊN CÔNG THỨC] trong LaTeX.

Yêu cầu:
- Viết trong \begin{equation}...\end{equation}
- Có \label{eq:...}
- Giải thích từng ký hiệu bằng \begin{itemize}
- Văn phong học thuật, tiếng Việt
```

---

## ⚡ Mẹo Sử Dụng AI Hiệu Quả

1. **Kiểm tra lại** mọi output trước khi paste — AI có thể sai.
2. **Chia nhỏ** yêu cầu: viết từng section, không yêu cầu cả chương.
3. **Cung cấp ngữ cảnh**: dán outline hoặc nội dung draft.
4. **Yêu cầu sửa**: "Sửa lại phần X, thêm trích dẫn, bớt dài dòng".
5. **Không copy nguyên**: Luôn chỉnh sửa cho phù hợp nội dung thật.

---

## ⚠️ Lưu Ý Đạo Đức

- AI là **công cụ hỗ trợ**, không thay thế việc nghiên cứu.
- **Không copy nguyên văn** output AI vào đồ án.
- Luôn **kiểm chứng** thông tin và trích dẫn từ AI.
- Tuân thủ **quy định** của trường về sử dụng AI trong học thuật.
