5 PRINT "� ����� ��������� ����������� ����� ����� ������ ������?"
10 INPUT P:INPUT N:FOR L=P TO N
20 FOR I=FIX(L^(1/3)+.5) TO 0 STEP(-1):FOR J=0 TO I
30 IF I^3+J^3=L THEN K=K+1:NEXT I ELSE NEXT J,I
40 IF K>=2 THEN GOSUB 100:RA=1:K=0:NEXT L ELSE K=0:NEXT L
50 IF RA<1 THEN PRINT "����� ����� ���!"
60 END
100 FOR I=FIX(L^(1/3)+.5) TO 0 STEP(-1):FOR J=0 TO I
110 IF I^3+J^3=L THEN PRINT STR$(L);"=";MID$(STR$(I),2);"^3+";MID$(STR$(J),2);"^3":NEXT I ELSE NEXT J,I
120 RETURN
