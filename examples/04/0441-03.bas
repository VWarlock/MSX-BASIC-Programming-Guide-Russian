10 '����� �������� ������� y=f(x) �� ������� [a,b] ������� �������� �������
20 DEFFN Y(X)=-X^2+5: '��� �������
30 INPUT"A,B,��������";A,B,E
40 GOSUB 110:GOSUB120
50 IF ABS(B-A)<E THEN 90
60 IF Y1>Y2 THEN 70
65 B=X2:X2=X1:Y2=Y1:GOSUB 110:GOTO 80
70 A=X1:X1=X2:Y1=Y2:GOSUB120 'WW�
80 GOTO 50
90 X=(A+B)/2:PRINT"Y ���=";FNY(X);"��� x=";X
100 END
110 X1=.618*A+.382*B:Y1=FNY(X1):RETURN 'WW�
120 X2=.382*A+.618*B:Y2=FNY(X2):RETURN 'WW�
