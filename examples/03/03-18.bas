5 '������������� ������� A(N,M) ���������������� ������ ������� � ����� ��� �� ����� ������� ��� �������� (������ 10-20).
10 DEFINT N,M,I,J,Y,K,L:INPUT N,M:DIM A(N,M):X=RND(-TIME)
20 FOR I=1 TO N:FOR J=1 TO M:A(I,J)=INT(10*RND(1)):PRINTA(I,J);:NEXT J:PRINT:NEXTI:IF N+M=2 THEN PRINT"����-����������!":END
30 '������������� ��������������� ������� B (������ 40-50).
40 K=N*M:DIM B(K)
50 FOR I=1 TON:FOR J=1 TOM:Y=M*(I-1)+J:B(Y)=A(I,J):NEXTJ,I
65 '�������������� ��������� � ������� B(������ 70-90)
70 FOR Y=1 TO K-1:FOR L=Y+1 TO K
80 IF B(Y)<B(L) THEN 90 ELSE SWAP B(Y),B(L)
90 NEXT:NEXT
93 '������� ���������� ��������� ��������� � ������� B � ����� ���������� �� ����� ������� (������ 95-120).
95 U=1
100 FOR I=1 TO K-1
110 IF B(I)<>B(I+1) THEN U=U+1:NEXT I ELSE NEXT I
120 PRINT"���������� ����.���������:";U
