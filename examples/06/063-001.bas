20 SCREEN0:KEY OFF
30 CLS
40 PRINT "���������� �������"
50 INPUT "������� ������� � ��";HZ
60 IF HZ<28 OR HZ>55932! THEN 30
70 TMP=1789800#/(16*HZ)
80 CT=INT(TMP/256)
90 FT=TMPMOD256
100 PRINT "�������";TAB(17);":";HZ;"��"
110 PRINT "�������� ������ ���������:";FT
120 PRINT "�������� ������ ���������:";CT
130 PRINT"������ �� ���������� (Y-��, N-���)?";
140 A$=INKEY$:IF A$="" THEN 140
150 IF A$="Y" OR A$="y" THEN 30
160 END
