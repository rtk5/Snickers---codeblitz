.text
LDR R0, =matrix
LDR R1, =row_number
LDR R1, [R1]
LDR R2, =columns
LDR R2, [R2]
MOV R3, #0
MUL R6, R1, R2
ADD R0, R0, R6, LSL #2
MOV R4, #0
SUM_LOOP: LDR R5, [R0], #4
ADD R4, R4, R5
SUBS R2, R2, #1
BNE SUM_LOOP
STR R4, [R13]
B EXIT

EXIT: SWI 0x11

.data
matrix: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12
row_number: .word 1
columns: .word 4

.end
