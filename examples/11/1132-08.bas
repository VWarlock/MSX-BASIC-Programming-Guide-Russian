10 SCREEN 1:WIDTH 32
15 '��������� ����� SCREEN 1-2
20 DEFUSR=&H7E:A=USR(0)
30 '��������� ������� �������� �� ROM � ������� PGT
40 FOR T=0 TO 2
50    FOR K=0 TO 2047
60       VPOKE BASE(7)+2048*T+K,PEEK(&H1BBF+K)
70 NEXT K,T
80 '�������������� ����� �������� � ������� CT
90 FOR I=0 TO 6143:VPOKE BASE(6)+I,&HF4:NEXT I
100 '��������� ����� ������� �� 2-� � 3-� ����� ������
110 FOR Y=1 TO 2:FOR X=0 TO 7:VPOKE &H800*Y+255*8+X,255:NEXT X,Y
115 '������ ��������� ����� SCREEN 1-4
120 VDP(2)= 7:POKE &HF923,&H1C '���������� ������� PNT
140 VDP(5)=52:POKE &HF929,&H1A '�������� � ������� SAT
150 VDP(0)=4:CLS:NEW
