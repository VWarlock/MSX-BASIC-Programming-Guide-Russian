10 INPUT A,B,E
20 X=A:GOSUB 200:F1=Y
30 X=(A+B)/2
40 GOSUB 200:F2=Y:IF Y=0 THEN 90
50 IFSGN(F1)*SGN(F2)>0 THEN 70
60 B=X:GOTO 80
70 A=X:F1=F2
80 IF B-A>E THEN 30
90 PRINTUSING "������####.##### ��������##^^^^";X,E
100 END
200 Y=COS(EXP(X))-SIN(EXP(X*LOG(3.14159)))
210 RETURN
