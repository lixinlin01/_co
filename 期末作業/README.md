# 第六章

本章的目標是構建一個**組譯器 (Assembler)**，將符號化的 Hack 組合語言 (Assembly) 翻譯成二進制的機器語言 (Binary Code)。

### 1. A-指令 (A-Instruction)
- 語法：`@xxx，其中 xxx` 為非負十進位數值或符號 。  
- 二進制格式：`0vvvvvvvvvvvvvvv`（以 0 開頭，後接 15 位元數值） 。  

### 2. C-指令 (C-Instruction)
- 語法：`dest = comp ; jump` 。  
- 二進制格式：`111accccccdddjjj` 。  
- 欄位說明：  
  - comp (acccccc)：計算指令，指定 ALU 執行何種操作 。  
  - dest (ddd)：儲存目的地（如 A, D, M 或其組合） 。  
  - jump (jjj)：跳轉條件（如 JGT, JEQ, JMP 等） 。  

### 3. 指令參考圖  
<img width="700" height="500" alt="螢幕擷取畫面 2025-12-29 212110" src="https://github.com/user-attachments/assets/eec44106-51ac-4f39-9a5e-fc4f3f167268" />
