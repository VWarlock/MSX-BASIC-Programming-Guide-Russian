10 OPEN "TEST.DAT" FOR OUTPUT AS #1
20 PRINT #1,"�������";14;28.0855:CLOSE#1
40 OPEN "TEST.DAT" FOR INPUT AS#1
50 FOR K%=1 TO 3:INPUT#1,A$:PRINT"�������� �����";K%;":";A$:NEXT K%
70 CLOSE#1
