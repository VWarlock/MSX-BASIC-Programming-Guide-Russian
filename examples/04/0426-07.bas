10 INPUT"������� �����";X$
20 INPUT"������� ����� ���������� ��������";M%
30 IF M%=0 OR M%*LEN(X$)>255 THEN PRINT"��������� ����":GOTO10
40 N$="":FOR I=1 TO LEN(X$):FOR J=1 TO M%
70 N$=N$+MID$(X$,I,1):NEXTJ,I
90 PRINT "�� ����� ������?  ";N$
