10 FOR T=1 TO 3
20     FOR D=0 TO 959:VPOKE 4096*T+D,32:NEXT D '������� T-�� ��������
30     PRINT "�������"T"�����";:INPUT A$
40     PRINT "� ������ ����� ��������?"
50     INPUT "X(�� 0 �� 39)";VX:INPUT "Y(�� 0 �� 23)";VY
60   FOR B=1 TO LEN(A$)
70    VPOKE 4096*T+40*VY+VX+B,ASC(MID$(A$,B,1))'������ �� T-� ��������
80   NEXT B:NEXT T
90  FOR T=1 TO 3:Z$=INPUT$(1): BASE(0)=4096*T '4096=&H1000 WW� &H10 00
95    POKE &HF923, &H10*T: POKE &HF922, 0*T '������ � ������
97  NEXT T
100 A$=INPUT$(1):BASE(0)=0:POKE &HF923,0 '����� "�����������" 0-� ��������
