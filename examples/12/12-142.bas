10 DEFINT A-Z:GOTO 120
20 FOR I=P1 TO Q1:H1=NOT H1
30 IF H1><0 THEN X[I,A1]=NN-A1*N+1+N-IELSEX[I,A1]=A1*N-N+I
40 NEXT:RETURN 'WW�
50 FOR I=P2 TO Q2:H2=NOT H2
60 IF H2><0 THEN X[I,A2]=A2*N+1-I ELSE X[I,A2]=NN-A*N+I
70 NEXT:RETURN 'WW�
80 FOR I=P3 TO Q3:H3=NOT H3
90 IFH3><0THENX[I,A3]=A3*N+1-I ELSE X[I,A3]=NN-A3*N+N-I+1
100 NEXT:RETURN 'WW�
110 'OOOOO �������� ��������� OOOOO
120 INPUT N:IF N=2 THEN PRINT"�������� ������� �� ����� ��������� ��������������! Good luck!":END ELSE DIM X[N,N]
130 N2=N\2:NN=N*N:P=(N=(N\4)*4):Q=P::R=-1
140 FOR A=1 TO N2-1
150 P2=1:Q2=A-1:A2=A:H2=R:GOSUB 50:P1=A:Q1=N2-1:A1=A:H1=-1:GOSUB 20
160 IF Q THEN X[N2,A]=NN-A*N+N2+1 ELSE X[N2,A]=NN-A*N+N2
170 P1=N2+1:Q1=N:A1=A:H1=NOT Q:GOSUB 20:Q=NOT Q:R=NOT R:NEXT
180 P1=1:Q1=N2-1:A1=N2:H1=NOT P:GOSUB 20:P1=N2+2:Q1=N:A1=N2:H1=0:GOSUB 20
190 P3=1:Q3=N2-1:A3=N2+1:H3=P:GOSUB 80:P3=N2+2:Q3=N:A3=N2+1:H3=-1:GOSUB 80
200 Q=P:R=-1
210 FOR A=N2+2 TO N
220 P2=1:Q2=N-A:A2=A:H2=Q:GOSUB 50
230 X[N-A+1,A]=A*N-A+1
240 P2=N-A+2:Q2=N2-1:A2=A:H2=-1:GOSUB 50
250 IF NOT R THEN:::X[N2,A]=NN-A*N+N2:X[N2+1,A]=A*N-N2+1:::ELSE:::FOR B=N2 TO N2+1:X[B,A]=NN-A*N+N-B+1:NEXT B
260 P2=N2+2:Q2=A-1:A2=A:H2=NOT R:GOSUB 50:P1=A:Q1=N:A1=A:H1=-1:GOSUB20
270 Q=NOT Q:R=NOT R:NEXT A
280 FOR A=N2 TO N2+1:FOR B=N2 TO N2+1
290 IF P<>0 THEN X[B,A]=A*N-N+B ELSE X[B,A]=NN-A*N+N-B+1
300 NEXT B,A
310 IF NOT P THEN:::FOR A=N2 TO N2+1:X[N2-1,A]=A*N-N2+2:NEXT:::FOR B=N2 TO N2+1:X[B,N2+2]=N*N2-2*N+B:NEXT
320 FOR F1=1 TO N:FOR F2=1 TO N:PRINTUSING"####";X[F1,F2];:NEXT F2:PRINT :NEXT F1
330 END
