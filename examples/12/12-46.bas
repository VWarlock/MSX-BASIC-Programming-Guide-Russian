3 PRINT"������� ������� ����:
5 INPUT"3� N �10";N
6 INPUT"3� M �14";M
10 K=N-1:L=M-1
20 DIM A(N,M),B(K,L),A1$(N,M),B1$(K,L)
30 W=RND(-TIME):CLS:PRINT"����";CHR$(34);"�����";CHR$(34):LOCATE 0,4,0
40 FOR I=1 TO K
50 FOR J=1 TO L
60 A(I,J)=INT(2*RND(1)):IF A(I,J)=1 THEN A1$(I,J)=CHR$(155) ELSE A1$(I,J)="*"
70 PRINT A1$(I,J);SPC(2);:NEXT J:PRINT:PRINT:NEXT I
80 P=0
90 FOR I=1 TO K:FOR J=1 TO L
100 P=A(I-1,J-1)+A(I-1,J)+A(I-1,J+1)+A(I,J-1)+A(I,J+1)+A(I+1,J-1)+A(I+1,J)+A(I+1,J+1)
110 IF A(I,J)=0 THEN IF P=3 THEN B(I,J)=1 ELSE B(I,J)=0 ELSE IF P=2 OR P=3 THENB(I,J)=1 ELSE B(I,J)=0
120 NEXT J:NEXT I
130 FOR I=1 TO K:FOR J=1 TO L:IF B(I,J)<>A(I,J)THEN 150 ELSE NEXT:NEXT
140 PRINT "������� �����������!"
145 GOTO 145
150 LOCATE0,4
160 FOR I=1 TO K:FOR J=1 TO L
170 A(I,J)=B(I,J)
180 IF B(I,J)=1 THEN B1$(I,J)=CHR$(155)ELSE B1$(I,J)="*"
190 PRINT B1$(I,J);SPC(2);:NEXT:PRINT:PRINT:NEXT
200 LOCATE0,0,0:GOTO80
