1 INPUT"��� �����";A$
10 OPEN A$ FOR INPUT AS#1
20 FOR I=1 TO 7
30    I$(I)=INPUT$(1,#1)
40    PRINT ASC(I$(I)),HEX$(ASC(I$(I)))
50 NEXT
60 CLOSE
65 IF I$(1)<>"�" THEN PRINT"��� �� BLO-����! ":END
66 PRINT"�� ������ ������� ������ �� ������� (�/�)?"
67 Y$=INKEY$:IF Y$="" THEN 67
68 IF Y$="�" OR Y$="�" THEN LPRINT A$
69 A1=256*ASC(I$(3))+ASC(I$(2))
70 PRINT "��������� �����:";HEX$(A1);" ���";A1
71 IF Y$="�"OR Y$="�" THEN LPRINT"��������� �����:";HEX$(A1);" ���";A1
79 A2=256*ASC(I$(5))+ASC(I$(4))
80 PRINT "�������� �����:";HEX$(A2);" ���";A2
81 IF Y$="�" OR Y$="�" THEN LPRINT"�������� �����:";HEX$(A2);" ���";A2
89 A3=256*ASC(I$(7))+ASC(I$(6))
90 PRINT "����� �������:";HEX$(A3);" ���";A3
91 IF Y$="�" OR Y$="�" THEN LPRINT"����� �������:";HEX$(A3);" ���";A3
