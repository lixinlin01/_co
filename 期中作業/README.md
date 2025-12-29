# 第一章
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

---
## 13. DMux (原創)
根據 sel 的狀態，將 in 導向輸出端 a 或 b。

**13.1 DMux 電路圖**

<img width="300" height="200" alt="螢幕擷取畫面 2025-12-22 204845" src="https://github.com/user-attachments/assets/32e8b90e-7347-4697-8f86-e72b25174484" />

---
## 14. DMux4Way (原創)
根據 sel，將 in 導向其中一個輸出端，其他為 0。

**14.1 DMux4Way 電路圖**

<img width="400" height="400" alt="螢幕擷取畫面 2025-12-22 211208" src="https://github.com/user-attachments/assets/5a497e28-d110-402e-a535-4c63d5115bc0" />

---
## 15. DMux8Way (原創)
**DMux8Way 電路圖**

<img width="350" height="400" alt="螢幕擷取畫面 2025-12-22 212322" src="https://github.com/user-attachments/assets/0632e539-16ca-4213-ab8d-3ebb2b2783c4" />

# 第二章
## 1. HalfAdder (原創)
Sum (總和位元)：當 a 和 b 不同時，Sum 才是 1。是 XOR 閘的功能。  
Carry (進位位元)：當 a 和 b 同時為 1 時。是 AND 閘的功能。  

### 1.1 HalfAdder 電路圖  
<img width="300" height="200" alt="HalfAdder" src="https://github.com/user-attachments/assets/27f909fb-6f0a-4d4d-a245-c72e8f32e99d" />

---  
## 2. FullAdder (原創)
將兩個半加器（HalfAdder）串聯起來。

### 2.1 FullAdder 電路圖  
<img width="600" height="150" alt="FullAdder" src="https://github.com/user-attachments/assets/bceace18-0105-493e-b3f0-ec409e183db6" />

### 2.2 FullAdder 真值表  
| a | b | c | s1 | c1 | sum | c2 | carry |
| -- | -- | -- | -- | -- | --- | -- | ----- |
| 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 1 | 1 | 1 | 0 | 1 | 1 | 0 | 1 |
| 0 | 1 | 0 | 1 | 0 | 1 | 0 | 0 |
| 1 | 0 | 1 | 1 | 0 | 0 | 1 | 1 |

---
## 3. Add16 (原創)  
16-bit 相加，第一個位元不需外部 carry ，用 HalfAdder。

### 3.1 Add16 電路圖  
<img width="550" height="250" alt="螢幕擷取畫面 2025-12-29 113702" src="https://github.com/user-attachments/assets/773f65fc-2eca-4a4b-9c39-910776f25355" />

---
## 4. Inc16 (原創)
將輸入加 1 。

### 4.1 Inc16 電路圖  
<img width="500" height="150" alt="螢幕擷取畫面 2025-12-29 114147" src="https://github.com/user-attachments/assets/c683a52e-3202-4ef5-9d2a-193cab592b76" />

---
## 5. ALU (參考)
參考連結：https://github.com/Nickh2k6/_co/blob/main/homework/2/ALU.hdl  

ALU 的控制位元功能：
- zx: 若為 1，將 x 輸入歸零。
- nx: 若為 1，將 x 輸入取反。
- zy: 若為 1，將 y 輸入歸零。ny: 若為 1，將 y 輸入取反。
- ny: 若為 1，將 y 輸入取反。
- f: 若為 1，執行 x + y；若為 0，執行 x AND y。
- no: 若為 1，將最終輸出結果取反。
- ng: 若為負數(最高位元 = 1)，輸出 1，否則輸出 0。
- zr: 若全部位元為 0，輸出 1，否則輸出 0。

### 5.1 ALU 電路圖
<img width="500" height="300" alt="image" src="https://github.com/user-attachments/assets/ced31897-56d5-4e1c-9a6a-8e1a514f89f3" />

# 第三章
## 1. bit (參考)
參考連結:https://github.com/Luo051227/_co/blob/main/%E6%9C%9F%E4%B8%AD/3/Bit

由一個 DFF (Data Flip-Flop，資料正反器) 和一個 Mux (多工器) 組成。  
`load = 1 時，寫入新值`  
`load = 0 時，Mux 會將 DFF 的輸出拉回輸入，形成迴圈，保持舊值不變`

---
## 2. Register (原創)
16 個 Bit 並排組成

---
## 3. PC (原創)
順序：
1. Reset： 若 reset = 1，PC 歸零。  
2. Load： 若 load = 1，PC 被設為輸入值。  
3. Inc： 若 inc = 1，PC 值加 1 。     
4. 若以上皆非，保持原值。

---
## 4. RAM8 (原創)
8 個 16-bit 暫存器。  
Address： 3 個位元，範圍是 000 到 111。    
DMux8Way、Mux8Way16:將輸入導入正確的暫存器並輸出。  

---
## 5. RAM64 (原創)
64 個 16-bit 暫存器。  
Address: 6 個位元。  

---
## 6. RAM512 (原創)
512 個 16-bit 暫存器。  
Address: 9 個位元。 

---
## 7. RAM4K (原創)
4K 個 16-bit 暫存器。  
Address: 12 個位元。  

---
## 8. RAM16K (原創)
16K個 16-bit 暫存器。  
Address: 14 個位元。  

# 第四章
使用組合語言  
略.....。

# 第五章
