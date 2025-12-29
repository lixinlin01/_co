# 期末作業(6~12章)
**AI輔助學習：https://gemini.google.com/share/d0721e5d73eb**
## 第六章

**作業連結：**  
**習題完成狀態：** AI  
**理解程度：** 大概理解  

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

  **指令參考圖**

<img width="700" height="500" alt="螢幕擷取畫面 2025-12-29 212110" src="https://github.com/user-attachments/assets/eec44106-51ac-4f39-9a5e-fc4f3f167268" />

### 3. 符號處理 (Symbols)
Hack 語言支援三種符號，組譯器需透過**符號表 (Symbol Table)** 來管理：

1. **預定義符號 (Predefined Symbols)**：
   - `R0` - `R15` 對應 `RAM[0]` - `RAM[15]`。
   - `SCREEN` 對應 `RAM[16384]`，`KBD` 對應 `RAM[24576]`。
   - `SP`, `LCL`, `ARG`, `THIS`, `THAT` 對應 `R0` - `R4`。  
2. **標籤符號 (Label Symbols)**：
   - 由偽指令 `(Xxx)` 定義。
   - 用於標記程式跳轉位置 (`goto`)。
   - 值為下一條指令的 ROM 地址 (程式行號)。
3. **變數符號 (Variable Symbols)**：
   - 使用者自定義的變數 (如 `@sum`)。
   - 從 `RAM[16]` 開始依序分配地址。

### 4. 實作策略 (Implementation Strategy)
建議採用 **兩次掃描 (Two-Pass)** 的方式來實作組譯器：

- **第一次掃描 (First Pass)**：
  - 只讀取程式碼，尋找所有的標籤符號 `(LABEL)`。
  - 將標籤及其對應的 ROM 地址存入符號表。
  - *注意：`(LABEL)` 本身不產生機器碼，不佔用行號。*
- **第二次掃描 (Second Pass)**：
  - 再次從頭讀取程式碼。
  - 處理 A-指令：
    - 若是數字，直接轉二進制。
    - 若是符號，查符號表。若符號表中不存在，則視為「新變數」，分配下一個可用的 RAM 地址 (從 16 開始)，並存入符號表。
  - 處理 C-指令：解析各欄位並查表轉換。
  - 將翻譯後的二進制碼寫入輸出檔案。
