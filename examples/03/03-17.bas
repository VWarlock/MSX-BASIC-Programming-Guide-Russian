5 '�������� ������� A(N,M) � ���������� ��� ���������������� ������ ������� (������ 10-20).
10 DEFINT I,J,N,M,Y,K,L:INPUT N,M:DIM A(N,M):X=RND(-TIME)
20 FOR I=1 TO N:FOR J=1 TO M:A(I,J)=INT(10*RND(1)):PRINT A(I,J);:NEXT J:PRINT:NEXTI:IF N+M=2 THEN RUN10
30 '������������� ��������������� ������� B (������ 40-50).
40 K=N*M:DIM B(K) 
50 FORI=1TO N:FOR J=1 TO M:Y=M*(I-1)+J:B(Y)=A(I,J):NEXTJ,I
60 '���� ���� (������ 70-110) ��������� ����� ����������� ����� ���������, ������������� � ������� ����� ������ ����.
70 FOR Y=1 TO K-1:FOR L=Y+1 TO K
80 IF B(Y)<B(L) THEN 90 ELSE SWAP B(Y),B(L)
90 NEXT:NEXT
100 FOR I=1 TO K-1
110 IF B(I)=B(I+1) THEN PRINT"����������� �����:";B(I) ELSE NEXTI:PRIN
