5 '������������� ������� A(M,N) (������ 10-30).
10 DEFINT M,N,I,J,K:INPUT M,N:DIM A(M,N):K=N+M:X=RND(-TIME)
20 FOR I=1 TO M:FOR J=1 TO N
30 A(I,J)=INT(11*RND(1)-5):PRINT A(I,J);:NEXTJ:PRINT:NEXT I
45 IF M=1 AND N=1 THEN IF A(1,1)<0 THEN PRINT"������� �������:";A(1,1):END ELSE PRINT"������ �������� ���!":END'������ M=N=1
47 '���������� �������������� �������� ������� A, � �������� ����� �������� ���������� (������ 50-70).
50 FOR I=1 TO M:FOR J=1 TO N
60 IF A(I,J)<0 THEN IF I+J<K THEN K=I+J:C=A(I,J):NEXTJ:NEXTI ELSE NEXT J:NEXT I ELSE NEXT J:NEXT I
70 PRINT"������� �������.�������:";C
