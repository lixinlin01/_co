## 1. Not 閘 (原創)
將 NAND 閘的兩個輸入連接 in，實現 NOT 閘。

**1.1 Not 電路圖**

<img width="200" height="100" alt="螢幕擷取畫面 2025-12-11 113701" src="https://github.com/user-attachments/assets/d80be7ed-56a5-4a47-a3b8-bb95e979d524" />

 **1.2 Nand 真值表**

| A | B | 輸出 |
| -- | -- |----- |
| 0 | 0 | 1 |   
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

---
## 2. Not16 (原創)
使用 16 個 Not 閘，對輸入in 進行運算

**2.1 Not16 電路圖**

<img width="350" height="350" alt="螢幕擷取畫面 2025-12-11 125320" src="https://github.com/user-attachments/assets/a85591dd-c556-4890-81c5-e33c641ecf09" />

---
## 3. And 閘 (原創)
對 NAND 的輸出進行反相 (NOT) 運算。

**3.1 And 電路圖**

<img width="400" height="200" alt="And閘" src="https://github.com/user-attachments/assets/7d2617ed-64d3-42c8-8cd8-b4754471dad2" />

---
## 4. And16 (原創)
使用 16 個 And 閘，對輸入 a 和 b 進行 AND 運算。

**4.1 And16 電路圖**

<img width="400" height="300" alt="And16" src="https://github.com/user-attachments/assets/89da2380-b1bf-447a-b6df-86121a63af1f" />

---
## 5. Or 閘 (原創)
對兩個反相 (notA 和 notB) 進行 NAND 運算。

**5.1 Or 電路圖**

<img width="300" height="200" alt="螢幕擷取畫面 2025-12-11 131510" src="https://github.com/user-attachments/assets/0f2dd855-7444-42d5-87f5-fe934148ced7" />

---
## 6. Or16 (原創)
使用 16 個 And 閘，對輸入 a 和 b 進行運算。

**6.1 Or16 電路圖**

<img width="250" height="350" alt="Or16" src="https://github.com/user-attachments/assets/9ef31750-d322-497d-95b6-2d248ae45222" />

---
## 7. Or8way (原創)
樹狀結構，縮減輸入

**7.1 Or8way 電路圖**

<img width="500" height="300" alt="Or8way" src="https://github.com/user-attachments/assets/d7a4caf4-830d-4b6a-8b9b-45b6fba3efda" />

---
## 8. Xor 閘 (原創)
當兩個輸入 a 和 b 的值不同時，輸出 out 才為 1, else out =0。

**8.1 Xor 電路圖**

<img width="500" height="250" alt="Xor" src="https://github.com/user-attachments/assets/08888774-ba00-424e-a87c-59c0672ffb61" />

**8.2 Xor 真值表**

| A | B | A̅ | B̅ | A•B̅ | A̅•B | Or(Xor) |
| -- | -- | -- | -- | ----- | ----- | ----- |
| 0 | 1 | 1 | 0 | 0 | 1 | 1 |
| 0 | 0 | 1 | 1 | 0 | 0 | 0 |
| 1 | 1 | 0 | 0 | 0 | 0 | 0 |
| 1 | 0 | 0 | 1 | 1 | 0 | 1 |

---
## 9. Mux 閘 (原創)
根據選擇訊號 sel 的值，將輸入 a 或 b 導向輸出 out  
--> if (sel = 0) out = a,  else out = b

**9.1 Mux 電路圖**

<img width="500" height="250" alt="螢幕擷取畫面 2025-12-11 144422" src="https://github.com/user-attachments/assets/b4f99701-6b3a-40c8-a612-79a056c21d59" />

---
## 10. Mux16 (原創)
使用 16 個 Mux 閘，對輸入 a 和 b 進行運算。

---
## 11. Mux4Way16 (原創)
根據 sel 從 4 個輸入中輸出其中 1 個 。
以 101 為例，sel[0] = 右邊的 1，sel[1] = 0，sel[2] = 左邊的 1 。

**11.1 Mux4Way16 電路圖**

<img width="400" height="400" alt="Mux4Way16" src="https://github.com/user-attachments/assets/458e85ba-42d1-43fd-a701-2a10bb2284e1" />

---
## 12. Mux8Way16 (原創)
根據 sel 從 8 個輸入中輸出其中 1 個

**12.1 Mux8Way16 電路圖**

<img width="400" height="400" alt="Mux8Way16" src="https://github.com/user-attachments/assets/ac89cada-5839-4f27-a579-ffbede7df7d8" />

