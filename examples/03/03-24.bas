10 DEFINT M,N,I,J,W,K,B,D:INPUT"������� M,N";M,N
15 IF M<2 OR N<2 THEN PRINT "������� ����� ���������� �������� (�����)!":RUN 10
20 INPUT"�������� �������[X,Y]";X,Y
30 Z=RND(-TIME):DIM A[M,N],Q[M,N],L[N],F[N]
40 '��������� ������ A[M,N] ���������� ������ ������� �� ������� [X,Y] � �������� ��� � ������ Q[M,N](������ 50-70)
50 FOR I=1 TO M:FOR J=1 TO N
60 A[I,J]=INT((Y-X+1)*RND(1)+X):Q[I,J]=A[I,J]
70 NEXT J,I
80 '������� �������������� ��������(������ 90-110)
90 FOR J=1 TO N:FOR I=1 TO M
100 IF A[I,J]<0 AND ABS(A[I,J])MOD2=0 THEN L[J]=L[J]+ABS(A[I,J])
110 F[J]=L[J]:NEXT I,J
120 '������������� ������� �� ����������� �������������(������ 130-180)
130 FOR W=1 TO N-1 '������������ ����!
140 FOR B=1 TO N-1:FOR K=B+1 TO N
150 IF L[B]<=L[K] THEN 180 ELSE SWAP L[B],L[K]
170 FOR D=1 TO M:SWAP A[D,B],A[D,K]:NEXT D
180 NEXT K,B,W
190 '����� �����������
200 FOR I=1 TO M
210 FOR J=1 TO N:PRINT USING"####";Q[I,J];:NEXTJ:PRINT SPC(4)
220 FOR J=1 TO N:PRINT USING"####";A[I,J];:NEXT J:PRINT
230 NEXT I
240 FOR H=0 TO 30:PRINT "-";:NEXT H:PRINT
250 '� ������ ��������� ������ �������������!
260 FOR J=1 TO N:PRINT USING"####";F[J];:NEXT:PRINT SPC(4)
270 FOR J=1 TO N:PRINT USING"####";L[J];:NEXT
