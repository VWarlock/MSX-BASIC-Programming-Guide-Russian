10 PRINT"������� ��� ����������������� �����"
20 INPUT A$,B$
30 SM=VAL("&H"+A$)+VAL("&H"+B$)
40 DF=VAL("&H"+A$)-VAL("&H"+B$)
50 PRINT "�����, ��������:";RIGHT$("0000"+HEX$(SM),4);SPC(1);RIGHT$("0000"+HEX$(DF),4)
