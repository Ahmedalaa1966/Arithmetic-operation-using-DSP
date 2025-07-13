# Arithmetic-operation-using-DSP
System Description
This system uses DSP IPs to perform basic arithmetic operations like addition, subtraction, and
multiplication. Since the Zybo Z7-10 FPGA board has limited I/O pins, we will use two switches
for the 2-bit input number (i_a) and two switches for the 2-bit signal (i_sel) that selects the
operation. For addition and subtraction, we will add or subtract a constant value of 2'b11 to the
input (i_a), and for multiplication, we will multiply the input (i_a) by 2'b10. The select signal
(i_sel) will choose which operation result to output.
<img width="901" height="496" alt="image" src="https://github.com/user-attachments/assets/bb0230de-5550-455a-b138-f25d93bd9836" />
<img width="1109" height="453" alt="image" src="https://github.com/user-attachments/assets/a5d0b0dc-989c-4145-84c1-10ef63d57254" />
