10 COLOR 1,15,8:SCREEN 2:X=5:Y=10
20 N=VPEEK(BASE(5*2+0)+(Y\8)*256+(YMOD8)*32+X) '�������������� "����������" ���� ����� 69 � ���� 1 ������� PNT � ������� �������� N (N=69, ���� ������� PNT �� ����������)
30 FOR I=0 TO 7
40 VPOKE(&H800+N*8+I),&B11100011'������� PGT ��������� �� ��� ����,��� ��� �� ������� �������� �� 2048 ������. �������������, ���� 1 ���� ������� ���������� �� ������ 2048=&H800.
41 '                             ������ �� 8 ������ ��������, �� ������� ��������� N � ���� 1, ����������� � ������ &�800+N*8
50 NEXT '���������� ���� 8 ������ � ����� �������� � �������� (X,Y)
60 GOTO 60
