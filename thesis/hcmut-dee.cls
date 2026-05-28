% ============================================================
%  HCMUT-DEE Thesis Kit — Class File (hcmut-dee.cls)
%  Version: v2.0.4 | Date: 2026-07-01
%
%  Copyright (c) 2026 Nguyễn Trọng Thắng (K19 - Hệ thống điện)
%                     & TS. Nguyễn Phúc Khải
%
%  Khoa Điện - Điện Tử, Đại học Bách Khoa TP. Hồ Chí Minh
%  (ĐHQG-HCM)
%
%  Tặng các Thầy Cô Bộ môn Hệ thống điện (cũ)
%  Ngành Kỹ thuật Điện — Khoa Điện - Điện Tử
%
%  License: MIT — Tự do sử dụng, chỉnh sửa, phân phối
%  với điều kiện giữ nguyên thông tin bản quyền.
%
%  VERSIONING (SemVer):
%    MAJOR.MINOR.PATCH
%    - MAJOR: Thay đổi lớn, không tương thích ngược
%    - MINOR: Thêm tính năng mới, tương thích ngược
%    - PATCH: Sửa lỗi, chỉnh sửa nhỏ
% ============================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hcmut-dee}[2026/07/01 v2.0.4 HCMUT-DEE Thesis Kit]

% === VERSION INFO ===
\newcommand{\TemplateVersion}{v2.0.4}
\newcommand{\TemplateDate}{2026-07-01}
\newcommand{\TemplateName}{HCMUT-DEE Thesis Kit}

% =====================================================================
%  PHAN 1: XU LY OPTIONS (Ngon ngu & In an)
% =====================================================================

% --- Flags ---
\newif\if@vietnamese  \@vietnamesetrue   % Mac dinh: tieng Viet
\newif\if@english     \@englishfalse
\newif\if@french      \@frenchfalse

% --- Khai bao options ---
\DeclareOption{vietnamese}{\@vietnamesetrue\@englishfalse\@frenchfalse}
\DeclareOption{english}{\@vietnamesefalse\@englishtrue\@frenchfalse}
\DeclareOption{french}{\@vietnamesefalse\@englishfalse\@frenchtrue}

% Chuyen cac option con lai cho report class (oneside, twoside, ...)
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax

% === LOAD BASE CLASS ===
\LoadClass[12pt,a4paper]{report}

% =====================================================================
%  PHAN 2: PACKAGES
% =====================================================================

% --- Encoding & Font ---
\RequirePackage[utf8]{inputenc}
\if@vietnamese
  \RequirePackage[T5]{fontenc}
  \RequirePackage{vntex}
\else
  \RequirePackage[T1]{fontenc}
\fi
\RequirePackage{anyfontsize}

% --- Ngon ngu ---
\if@vietnamese
  % Khong load babel de tranh xung dot voi vntex
\fi
\if@english
  \RequirePackage[english]{babel}
\fi
\if@french
  \RequirePackage[french]{babel}
\fi

% --- Trang & Bo cuc ---
\RequirePackage{geometry}
\RequirePackage{indentfirst}
\RequirePackage{setspace}
\RequirePackage{emptypage}

% --- Do hoa & Hinh anh ---
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{graphicx}
\RequirePackage{epstopdf}
\RequirePackage{tikz}
\usetikzlibrary{calc}
\RequirePackage[center]{caption}
\RequirePackage{subcaption}
\RequirePackage{pifont}
\RequirePackage{pdflscape}

% --- Toan hoc ---
\RequirePackage{amsmath,amssymb,amsthm,amsfonts}

% --- Bang bieu ---
\RequirePackage{float,longtable,booktabs,array,tabularx}
\RequirePackage{makecell,multicol,multirow}

% --- Thuat toan ---
\RequirePackage[linesnumbered,ruled,vlined]{algorithm2e}

% --- Listing code ---
\RequirePackage{listings}
\RequirePackage{tcolorbox}

% --- Lien ket & Tham chieu ---
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}
\RequirePackage{enumitem}
\RequirePackage{pdfpages}

% =====================================================================
%  PHAN 3: MAU SAC
% =====================================================================
\definecolor{PrintBlack}{cmyk}{0,0,0,1}
\definecolor{BKBlue}{RGB}{30,78,121}        % Mau xanh chinh thuc BK
\definecolor{CodeBG}{gray}{0.97}
\definecolor{CodeFrame}{gray}{0.5}
\definecolor{KeywordBlue}{RGB}{0,0,180}
\definecolor{StringOrange}{RGB}{200,100,0}
\definecolor{CommentGray}{RGB}{100,100,100}

% =====================================================================
%  PHAN 4: GEOMETRY & LAYOUT
% =====================================================================
\geometry{
  left=3.5cm,
  right=2cm,
  top=2cm,
  bottom=2.5cm,
  headheight=27pt
}
\addtolength{\topmargin}{-11pt}

% --- Gian dong ---
\onehalfspacing
\raggedbottom
\renewcommand{\arraystretch}{1.2}

% --- Do sau danh muc ---
\setcounter{secnumdepth}{3}   % Danh so den subsubsection
\setcounter{tocdepth}{2}      % Muc luc den subsection

% --- Duong dan hinh ---
\graphicspath{{figures/}{figures/logos/}{figures/examples/}}

% =====================================================================
%  PHAN 5: HEADER & FOOTER
% =====================================================================
\pagestyle{fancy}
\fancyhf{}

\if@vietnamese
  \renewcommand{\chaptermark}[1]{\markboth{Chương \thechapter.\ #1}{}}
\fi
\if@english
  \renewcommand{\chaptermark}[1]{\markboth{Chapter \thechapter.\ #1}{}}
\fi
\if@french
  \renewcommand{\chaptermark}[1]{\markboth{Chapitre \thechapter.\ #1}{}}
\fi

\renewcommand{\sectionmark}[1]{\markright{\thesection.\ #1}}
\fancyhead[L]{\itshape\footnotesize\nouppercase{\leftmark}}
\fancyhead[R]{}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.3pt}
\renewcommand{\footrulewidth}{0pt}

% =====================================================================
%  PHAN 6: HYPERREF
% =====================================================================
\hypersetup{
  colorlinks=true,
  linkcolor=black,
  citecolor=red,
  urlcolor=BKBlue,
  pdfcreator={HCMUT-DEE Thesis Kit \TemplateVersion}
}

% =====================================================================
%  PHAN 7: SEMANTIC COMMANDS (Thong tin sinh vien)
% =====================================================================

% --- BAT BUOC ---
\newcommand{\@ThesisTitle}{Tên đề tài tiếng Việt}
\newcommand{\ThesisTitle}[1]{\renewcommand{\@ThesisTitle}{#1}}

\newcommand{\@ThesisTitleEN}{Thesis Title in English}
\newcommand{\ThesisTitleEN}[1]{\renewcommand{\@ThesisTitleEN}{#1}}

\newcommand{\@StudentName}{Nguyễn Văn A}
\newcommand{\StudentName}[1]{\renewcommand{\@StudentName}{#1}}

\newcommand{\@StudentID}{21xxxxx}
\newcommand{\StudentID}[1]{\renewcommand{\@StudentID}{#1}}

\newcommand{\@StudentClass}{BK21XXX}
\newcommand{\StudentClass}[1]{\renewcommand{\@StudentClass}{#1}}

\newcommand{\@Major}{Kỹ thuật Điện}
\newcommand{\Major}[1]{\renewcommand{\@Major}{#1}}

\newcommand{\@Supervisor}{TS. Nguyễn Văn B}
\newcommand{\Supervisor}[1]{\renewcommand{\@Supervisor}{#1}}

% --- TUY CHON (co gia tri mac dinh) ---
\newcommand{\@Faculty}{Khoa Điện - Điện Tử}
\newcommand{\Faculty}[1]{\renewcommand{\@Faculty}{#1}}

\newcommand{\@Department}{}
\newcommand{\Department}[1]{\renewcommand{\@Department}{#1}}

\newcommand{\@ReportType}{ĐỒ ÁN TỐT NGHIỆP}
\newcommand{\ReportType}[1]{\renewcommand{\@ReportType}{#1}}

\newcommand{\@ThesisMonth}{\ifcase\the\month\or 01\or 02\or 03\or 04\or 05\or 06\or 07\or 08\or 09\or 10\or 11\or 12\fi}
\newcommand{\ThesisMonth}[1]{\renewcommand{\@ThesisMonth}{#1}}

\newcommand{\@ThesisYear}{\the\year}
\newcommand{\ThesisYear}[1]{\renewcommand{\@ThesisYear}{#1}}

\newcommand{\@AssignDay}{\hspace{0.6cm}}
\newcommand{\@AssignMonth}{\hspace{0.6cm}}
\newcommand{\@AssignYear}{\the\year}
\newcommand{\AssignDate}[3]{%
  \renewcommand{\@AssignDay}{#1}%
  \renewcommand{\@AssignMonth}{#2}%
  \renewcommand{\@AssignYear}{#3}%
}

\newcommand{\@DueDay}{\hspace{0.6cm}}
\newcommand{\@DueMonth}{\hspace{0.6cm}}
\newcommand{\@DueYear}{\the\year}
\newcommand{\DueDate}[3]{%
  \renewcommand{\@DueDay}{#1}%
  \renewcommand{\@DueMonth}{#2}%
  \renewcommand{\@DueYear}{#3}%
}

\newcommand{\@Reviewer}{}
\newcommand{\Reviewer}[1]{\renewcommand{\@Reviewer}{#1}}

\newcommand{\@CouncilChair}{}
\newcommand{\CouncilChair}[1]{\renewcommand{\@CouncilChair}{#1}}

\newcommand{\@memberempty}{}

\newcommand{\@CouncilMemberOne}{}
\newcommand{\CouncilMemberOne}[1]{\renewcommand{\@CouncilMemberOne}{#1}}

\newcommand{\@CouncilMemberTwo}{}
\newcommand{\CouncilMemberTwo}[1]{\renewcommand{\@CouncilMemberTwo}{#1}}

\newcommand{\@CouncilMemberThree}{}
\newcommand{\CouncilMemberThree}[1]{\renewcommand{\@CouncilMemberThree}{#1}}

\newcommand{\@CouncilMemberFour}{}
\newcommand{\CouncilMemberFour}[1]{\renewcommand{\@CouncilMemberFour}{#1}}

\newcommand{\@CouncilMemberFive}{}
\newcommand{\CouncilMemberFive}[1]{\renewcommand{\@CouncilMemberFive}{#1}}

\newcommand{\@SupervisorPercent}{100\%}
\newcommand{\SupervisorPercent}[1]{\renewcommand{\@SupervisorPercent}{#1}}

% Nhiem vu (noi dung phan "Nhiem vu" trong trang nhiem vu)
\newcommand{\@AssignmentTasks}{}
\newcommand{\AssignmentTasks}[1]{\renewcommand{\@AssignmentTasks}{#1}}

% --- PUBLIC GETTER COMMANDS (Dành cho sinh viên gọi trong các file .tex) ---
\newcommand{\getThesisTitle}{\@ThesisTitle}
\newcommand{\getThesisTitleEN}{\@ThesisTitleEN}
\newcommand{\getStudentName}{\@StudentName}
\newcommand{\getStudentID}{\@StudentID}
\newcommand{\getStudentClass}{\@StudentClass}
\newcommand{\getMajor}{\@Major}
\newcommand{\getSupervisor}{\@Supervisor}
\newcommand{\getFaculty}{\@Faculty}
\newcommand{\getDepartment}{\@Department}
\newcommand{\getReportType}{\@ReportType}
\newcommand{\getThesisMonth}{\@ThesisMonth}
\newcommand{\getThesisYear}{\@ThesisYear}
\newcommand{\getCouncilMemberOne}{\@CouncilMemberOne}
\newcommand{\getCouncilMemberTwo}{\@CouncilMemberTwo}
\newcommand{\getCouncilMemberThree}{\@CouncilMemberThree}
\newcommand{\getCouncilMemberFour}{\@CouncilMemberFour}
\newcommand{\getCouncilMemberFive}{\@CouncilMemberFive}


% =====================================================================
%  PHAN 8: TRANG BIA (\makecover)
% =====================================================================
\newcommand{\makecover}{%
  \begin{titlepage}
  \color{PrintBlack}
  
  % --- KHUNG VIEN (BORDER) ---
  \begin{tikzpicture}[overlay,remember picture]
    % Khung ngoai: Day 3pt
    \draw [line width=3pt, PrintBlack]
      ($ (current page.north west) + (2.5cm,-2.0cm) $)
      rectangle
      ($ (current page.south east) + (-1.5cm,2.0cm) $);
    % Khung trong: Manh 1pt
    \draw [line width=1pt, PrintBlack]
      ($ (current page.north west) + (2.65cm,-2.15cm) $)
      rectangle
      ($ (current page.south east) + (-1.65cm,2.15cm) $);
  \end{tikzpicture}

  % --- NOI DUNG ---
  \begin{center}
    % Header: Ten truong
    \begin{spacing}{1.3}
      \textbf{\fontsize{13}{15}\selectfont ĐẠI HỌC QUỐC GIA TP. HỒ CHÍ MINH}\\
      \textbf{\fontsize{13}{15}\selectfont TRƯỜNG ĐẠI HỌC BÁCH KHOA}\\
      \textbf{\fontsize{13}{15}\selectfont \MakeUppercase{\@Faculty}}
    \end{spacing}
    
    \vspace{0.1cm}
    
    % Ornament
    \makebox[5cm]{%
      \rule[0.5ex]{1.5cm}{0.5pt}%
      \hspace{0.2cm}%
      \fontsize{14}{14}\selectfont \ding{45}%
      \hspace{0.2cm}%
      \rule[0.5ex]{1.5cm}{0.5pt}%
    }
    
    \vspace{0.8cm}
    
    % Logo
    \includegraphics[width=3.5cm]{figures/logos/bachkhoa.png}
    
    \vspace{1.0cm}
    
    % Loai bao cao
    \textbf{\fontsize{18}{22}\selectfont \@ReportType}
    
    \vspace{0.3cm}
    \rule{11cm}{1.5pt}
    
    \vspace{0.6cm}
    
    % Ten de tai tieng Viet
    \begin{spacing}{1.5}
      \textbf{\fontsize{16}{19}\selectfont \@ThesisTitle}
    \end{spacing}
    
    \vspace{0.2cm}
    
    % Ten de tai tieng Anh
    \begin{spacing}{1.3}
      \textbf{\fontsize{13}{15}\selectfont%
        (\textit{\@ThesisTitleEN})}
    \end{spacing}
    
    \vspace{0.3cm}
    \rule{11cm}{1.5pt}
  \end{center}
  
  \vfill
  
  % --- THONG TIN ---
  \begin{table}[h]
    \centering
    \begin{tabular}{p{5.5cm} l}
      \fontsize{13}{15}\selectfont \textbf{Giảng viên hướng dẫn:} &
      \fontsize{13}{15}\selectfont \textbf{\@Supervisor} \\[0.4cm]
      \fontsize{13}{15}\selectfont \textbf{Sinh viên thực hiện:} &
      \fontsize{13}{15}\selectfont \textbf{\@StudentName} \\[0.2cm]
      \fontsize{13}{15}\selectfont \textbf{Mã số sinh viên:} &
      \fontsize{13}{15}\selectfont \textbf{\@StudentID} \\[0.2cm]
      \fontsize{13}{15}\selectfont \textbf{Lớp:} &
      \fontsize{13}{15}\selectfont \textbf{\@StudentClass} \\
    \end{tabular}
  \end{table}
  
  \vspace{1.8cm}
  
  \begin{center}
    \fontsize{12}{14}\selectfont
    \textbf{TP. HỒ CHÍ MINH, THÁNG \@ThesisMonth/\@ThesisYear}
  \end{center}
  \end{titlepage}
}

% =====================================================================
%  PHAN 9: TRANG NHIEM VU (\makeassignment)
% =====================================================================
\newcommand{\makeassignment}{%
  \newgeometry{left=3cm, right=1.5cm, top=1.5cm, bottom=1.5cm}
  \thispagestyle{empty}
  \color{PrintBlack}%
  %
  % Ma so form
  \begin{flushright}
    \vspace{-1.5em}
    \fontsize{9}{9}\selectfont FL012
  \end{flushright}
  \vspace{-0.5cm}
  %
  % Header 2 cot
  \begin{center}
    \begin{tabular}{p{0.38\textwidth} p{0.52\textwidth}}
      \centering \textbf{\fontsize{11}{13}\selectfont ĐẠI HỌC QUỐC GIA TP. HỒ CHÍ MINH} &
      \centering \textbf{\fontsize{11}{13}\selectfont CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM} \tabularnewline
      \centering \textbf{\fontsize{11}{13}\selectfont TRƯỜNG ĐẠI HỌC BÁCH KHOA} &
      \centering \textbf{\fontsize{11}{13}\selectfont Độc lập -- Tự do -- Hạnh phúc} \tabularnewline
    \end{tabular}
  \end{center}
  %
  \vspace{0.8cm}
  %
  \noindent
  \renewcommand{\arraystretch}{1.2}%
  \setlength{\tabcolsep}{2pt}%
  %
  \begin{tabularx}{\linewidth}{|p{3.2cm}|X|p{1.2cm}|p{2.2cm}|}
    \hline
    \multicolumn{1}{|c|}{\textbf{\small \MakeUppercase{\@Faculty}}} &
    \multicolumn{3}{c|}{\textbf{\fontsize{13}{15}\selectfont NHIỆM VỤ KHÓA LUẬN TỐT NGHIỆP}} \\
    \cline{2-4}
    \multicolumn{1}{|c|}{\textbf{\small}} &
    \multicolumn{3}{c|}{\textit{\footnotesize%
      (Chú ý: sinh viên phải dán tờ này vào trang thứ nhất của bản thuyết minh)}} \\
    \hline
    \textbf{\small HỌ VÀ TÊN:} & \textbf{\small \@StudentName}
      & \textbf{\small MSSV:} & \textbf{\small \@StudentID} \\
    \hline
    \textbf{\small NGÀNH:} & {\small \@Major}
      & \textbf{\small LỚP:} & {\small \@StudentClass} \\
    \hline
    %
    \multicolumn{4}{|l|}{\textbf{\small 1. Đầu đề khóa luận:}} \\
    \hline
    \multicolumn{4}{|p{\dimexpr\linewidth-2\tabcolsep-2\arrayrulewidth}|}{%
      \centering
      \textbf{\fontsize{11}{13}\selectfont \@ThesisTitle} \\
      \vspace{2pt}
      \textit{\fontsize{11}{13}\selectfont (\@ThesisTitleEN)}
    } \\
    \hline
    %
    \multicolumn{4}{|l|}{\textbf{\small 2. Nhiệm vụ (yêu cầu về nội dung và số liệu ban đầu):}} \\
    \hline
    \multicolumn{4}{|p{\dimexpr\linewidth-2\tabcolsep-2\arrayrulewidth}|}{%
      \@AssignmentTasks
    } \\
    \hline
    %
    \multicolumn{4}{|l|}{\textbf{\small 3. Ngày giao nhiệm vụ khóa luận:}%
      \hspace{1cm} \@AssignDay/\@AssignMonth/\@AssignYear} \\
    \hline
    \multicolumn{4}{|l|}{\textbf{\small 4. Ngày hoàn thành nhiệm vụ:}%
      \hspace{1.6cm} \@DueDay/\@DueMonth/\@DueYear} \\
    \hline
    %
    \multicolumn{4}{|@{}p{\dimexpr\linewidth-1.2pt\relax}@{}|}{%
      \begin{tabularx}{\dimexpr\linewidth-1.2pt\relax}{p{5.5cm}|X|>{\centering\arraybackslash}p{3.5cm}}
        \multicolumn{2}{l|}{\textbf{\small 5. Họ và tên người hướng dẫn:}}
          & \textbf{\small Phần hướng dẫn:} \\
        \hline
        - \@Supervisor & & \@SupervisorPercent \\
      \end{tabularx}
    } \\
    \hline
    %
    \multicolumn{4}{|l|}{\fontsize{9}{11}\selectfont%
      Nội dung và yêu cầu KLTN đã được thông qua Chủ trì ngành.} \\
    \hline
  \end{tabularx}
  %
  \vspace{0.3cm}
  %
  % Chu ky
  \noindent
  \begin{tabularx}{\linewidth}{>{\centering\arraybackslash}X >{\centering\arraybackslash}X}
    \textit{\small Ngày \underline{\hspace{0.6cm}} tháng \underline{\hspace{0.6cm}} năm \@ThesisYear}
    & \textit{\small Ngày \underline{\hspace{0.6cm}} tháng \underline{\hspace{0.6cm}} năm \@ThesisYear} \\
    \textbf{\small CHỦ TRÌ NGÀNH}
    & \makebox[0pt][c]{\textbf{\small GIẢNG VIÊN HƯỚNG DẪN CHÍNH}} \\
    \textit{\footnotesize (Ký và ghi rõ họ tên)}
    & \textit{\footnotesize (Ký và ghi rõ họ tên)} \\
    \vspace{2.5cm} & \vspace{2.5cm} \\
  \end{tabularx}
  %
  \vfill
  %
  % Phan danh cho Khoa
  \noindent
  \begin{minipage}{\linewidth}
    \textbf{\small PHẦN DÀNH CHO KHOA:} \\
    \fontsize{10}{12}\selectfont
    Người duyệt (chấm sơ bộ): \dotfill \\
    Đơn vị: \dotfill \\
    Ngày bảo vệ: \dotfill \\
    Điểm tổng kết: \dotfill \\
    Nơi lưu trữ đồ án: \dotfill
  \end{minipage}
  %
  \restoregeometry
}

% =====================================================================
%  PHAN 10: TRANG TO CHAM (\makeevaluation)
% =====================================================================
\newcommand{\makeevaluation}{%
  \newgeometry{left=3.5cm, right=2cm, top=2cm, bottom=2.5cm}
  \thispagestyle{empty}
  \color{PrintBlack}
  
  % Khung vien don
  \begin{tikzpicture}[overlay,remember picture]
    \draw [line width=1pt, PrintBlack]
      ($ (current page.north west) + (3.0cm,-2.0cm) $)
      rectangle
      ($ (current page.south east) + (-1.5cm,2.0cm) $);
  \end{tikzpicture}

  \begin{center}
    \vspace*{0.5cm}
    \textbf{\fontsize{13}{16}\selectfont ĐỒ ÁN TỐT NGHIỆP ĐƯỢC HOÀN THÀNH TẠI}\\
    \textbf{\fontsize{13}{16}\selectfont TRƯỜNG ĐẠI HỌC BÁCH KHOA -- ĐHQG TP. HCM}
  \end{center}
  
  \vspace{1cm}
  
  \noindent
  \begin{tabular}{p{7.5cm} l}
    Cán bộ hướng dẫn ĐATN: & \textbf{\@Supervisor} \\[0.8cm]
    Cán bộ chấm nhận xét 1: & \makebox[5cm]{\dotfill} \\[0.8cm]
    Cán bộ chấm nhận xét 2: & \makebox[5cm]{\dotfill} \\[0.4cm]
  \end{tabular}
  
  \vspace{0.2cm}
  
  \noindent
  Đồ án tốt nghiệp được bảo vệ tại Trường Đại học Bách Khoa, ĐHQG Tp.HCM
  ngày \underline{\hspace{0.8cm}} tháng \underline{\hspace{0.8cm}} năm \@ThesisYear.
  
  \vspace{0.5cm}
  
  \noindent
  Thành phần Hội đồng đánh giá ĐATN gồm:\\
  (Ghi rõ họ, tên, học hàm, học vị của Hội đồng chấm bảo vệ Đồ án tốt nghiệp)
  
  \vspace{0.2cm}
  
  % Bang hoi dong (de trong cho SV dien hoac nhap qua command)
  \noindent
  \begin{tabular}{p{0.5cm} p{7.5cm} p{6cm}}
    1. & \ifx\@CouncilMemberOne\@memberempty \makebox[7cm]{\dotfill} \else \textbf{\@CouncilMemberOne} \fi & -- Chủ tịch Hội đồng \\[0.2cm]
    2. & \ifx\@CouncilMemberTwo\@memberempty \makebox[7cm]{\dotfill} \else \textbf{\@CouncilMemberTwo} \fi & -- Ủy viên/ Thư ký \\[0.2cm]
    3. & \ifx\@CouncilMemberThree\@memberempty \makebox[7cm]{\dotfill} \else \textbf{\@CouncilMemberThree} \fi & -- Ủy viên \\[0.2cm]
    4. & \ifx\@CouncilMemberFour\@memberempty \makebox[7cm]{\dotfill} \else \textbf{\@CouncilMemberFour} \fi & -- Ủy viên \\[0.2cm]
    5. & \ifx\@CouncilMemberFive\@memberempty \makebox[7cm]{\dotfill} \else \textbf{\@CouncilMemberFive} \fi & -- Ủy viên \\
  \end{tabular}
  
  \vspace{0.5cm}
  
  \noindent
  Xác nhận của Chủ tịch Hội đồng đánh giá ĐATN và Chủ trì ngành
  sau khi đồ án đã được sửa chữa (nếu có).
  
  \vspace{1.5cm}
  
  \noindent
  \begin{tabular}{>{\centering\arraybackslash}p{7cm} >{\centering\arraybackslash}p{7cm}}
    \textbf{CHỦ TỊCH HỘI ĐỒNG} & \textbf{CHỦ TRÌ NGÀNH} \\[3.5cm]
  \end{tabular}
  
  \restoregeometry
}

% =====================================================================
%  PHAN 11: LISTING STYLES (Python, MATLAB, C/C++, PLC)
% =====================================================================

% --- Style chung ---
\lstset{
  basicstyle=\ttfamily\small,
  numberstyle=\tiny\color{CommentGray},
  numbers=left,
  numbersep=5pt,
  frame=single,
  breaklines=true,
  breakatwhitespace=false,
  showstringspaces=false,
  tabsize=4,
  captionpos=b,
  xleftmargin=1.5em,
  framexleftmargin=1.5em,
  backgroundcolor=\color{CodeBG},
  rulecolor=\color{CodeFrame},
}

% --- Python ---
\lstdefinestyle{pythonstyle}{
  language=Python,
  keywordstyle=\color{KeywordBlue}\bfseries,
  stringstyle=\color{StringOrange},
  commentstyle=\color{CommentGray}\itshape,
  morekeywords={self,True,False,None,as,with,yield,lambda,assert},
}

% --- MATLAB ---
\lstdefinestyle{matlabstyle}{
  language=Matlab,
  keywordstyle=\color{KeywordBlue}\bfseries,
  stringstyle=\color{StringOrange},
  commentstyle=\color{CommentGray}\itshape,
  morekeywords={classdef,properties,methods,events,enumeration},
}

% --- C/C++ ---
\lstdefinestyle{cstyle}{
  language=C++,
  keywordstyle=\color{KeywordBlue}\bfseries,
  stringstyle=\color{StringOrange},
  commentstyle=\color{CommentGray}\itshape,
  morekeywords={uint8_t,uint16_t,uint32_t,int8_t,int16_t,int32_t,bool},
}

% --- PLC Structured Text (IEC 61131-3) ---
\lstdefinestyle{plcstyle}{
  keywordstyle=\color{KeywordBlue}\bfseries,
  stringstyle=\color{StringOrange},
  commentstyle=\color{CommentGray}\itshape,
  morekeywords={PROGRAM,END_PROGRAM,FUNCTION,END_FUNCTION,
    FUNCTION_BLOCK,END_FUNCTION_BLOCK,VAR,END_VAR,VAR_INPUT,
    VAR_OUTPUT,VAR_IN_OUT,VAR_GLOBAL,CONSTANT,
    IF,THEN,ELSE,ELSIF,END_IF,CASE,OF,END_CASE,
    FOR,TO,BY,DO,END_FOR,WHILE,END_WHILE,REPEAT,UNTIL,END_REPEAT,
    RETURN,EXIT,TRUE,FALSE,AND,OR,NOT,XOR,MOD,
    BOOL,INT,DINT,REAL,LREAL,STRING,TIME,DATE,BYTE,WORD,DWORD,
    TON,TOF,TP,CTU,CTD,CTUD,SR,RS},
  sensitive=false,
  morecomment=[l]{//},
  morecomment=[s]{(*}{*)},
  morestring=[b]',
}

% --- LaTeX (cho huong dan) ---
\lstdefinestyle{latexstyle}{
  language=[LaTeX]TeX,
  keywordstyle=\color{KeywordBlue}\bfseries,
  commentstyle=\color{CommentGray}\itshape,
  texcsstyle=*\color{BKBlue}\bfseries,
}

% =====================================================================
%  PHAN 12: LABELS DA NGON NGU
% =====================================================================
\if@vietnamese
  \AtBeginDocument{%
    \renewcommand*{\contentsname}{MỤC LỤC}%
    \renewcommand*{\listfigurename}{DANH MỤC HÌNH ẢNH}%
    \renewcommand*{\listtablename}{DANH MỤC BẢNG BIỂU}%
    \renewcommand*{\bibname}{TÀI LIỆU THAM KHẢO}%
    \renewcommand*{\figurename}{Hình}%
    \renewcommand*{\tablename}{Bảng}%
    \renewcommand*{\appendixname}{Phụ lục}%
  }
\fi
\if@english
  \AtBeginDocument{%
    \renewcommand*{\bibname}{References}%
  }
\fi

% =====================================================================
%  KET THUC CLASS FILE
% =====================================================================
\endinput
