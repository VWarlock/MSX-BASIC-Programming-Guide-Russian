10 SCREEN 2:X=15:Y=12
20 A=VPEEK(BASE(5*2+0)+(Y\8)*256+(YMOD8)*32+X) '"�������" PNT
30 FOR I=0 TO 7
40   VPOKE(BASE(5*2+2)+(Y\8)*2048+A*8+I),&B11100011 '��������� "����������" ��������
50 NEXT
60 GOTO 60
