10 CLEAR 1000:MAXFILES=5:DIM M(200)
20 OPEN "���" FOR OUTPUT AS#4
30 INPUT "���������� ���������";S
40 FOR K=1 TO S:PRINT #4,"L";",";"W";",":NEXT K:CLOSE #4
70 OPEN "���" FOR INPUT AS#4
80 INPUT"����� �������� � INPUT$";X
90 Y=(LOF(4)-1)/X: Z=(LOF(4)-1)MOD X
105 IF Y=0 THEN 130
106 FOR K=1 TO Y
110 X$=INPUT$(X,#4):PRINT X$
115 NEXT
120 IF Z=0 THEN 140
130 PRINT INPUT$(Z,#4)
140 CLOSE #4
