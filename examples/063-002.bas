20 DEF FNFC(A,B)=INT((1789800#/((256*A)+B))/16)
30 CLS
40 PRINT "���������� ������� �� ��������� ���������"
50 INPUT"�������� ������ ���������:";FT
60 IF FT<0 OR FT>255 THEN BEEP:GOTO 50
70 INPUT "�������� ������ ���������:";CT
80 IF CT<0 OR CT>15 THEN BEEP:GOTO 70
90 ' ���������� ������� �� ����
100 IF CT=0 AND FT=0 THEN BEEP:GOTO 50
110 PRINT "�������: ";FNFC(CT,FT);"��"
120 PRINT "������ �� ���������� (Y-��, N-���)?";
130 A$=INKEY$:IF A$="" THEN 130
140 IF A$="y" OR A$="Y" THEN 30
150 END
