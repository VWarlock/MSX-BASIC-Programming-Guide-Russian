10 DEFINT M,N,I,J,K,A:INPUT"������� M � N";M,N
20 INPUT"�������� �������[X,Y]";X,Y
30 Z=RND(-TIME):DIM B(M,N),A(M,N)
40 '���������� ������� B(M,N) ���������������� ������ ������� �� �������[X,Y](������ 50-70)
50 FOR I=1 TO M:FOR J=1 TO N:B(I,J)=INT((Y-X+1)*RND(1)+X):A(I,J)=B(I,J):NEXT J,I
80 S=0:FOR I=1 TO M:FOR J=1 TO N
90 '���� �� ���������� ��� ����� ����� A(i,j),��������� ���� "����"(������ 100-160)
100 IF A(I,J)=0 THEN 180 ELSE FOR K=1 TO 0 STEP 1
120 B=ABS(A(I,J))-INT(ABS(A(I,J))/10)*10 '�������� ��������� ����� ����� A(i,j)
130 IF B>=4 THEN 180 ELSE A(I,J)=(ABS(A(I,J))-B)/10
150 K=A(I,J) '�������� �������: ���� A(i,j)=0,�� �� ����� "����" �������
160 NEXT K
170 IF A(I,J)=0THEN S=S+B(I,J)'���� ����� ������ ���������
180 NEXT J,I:FOR I=1 TO M:FOR J=1 TO N
210 PRINT B(I,J);:NEXT J:PRINT:NEXT I:PRINT"������� �����:";S
