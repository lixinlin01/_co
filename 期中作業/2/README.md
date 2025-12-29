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
