5 DEFINT N,K,J,I:INPUT N:DIM A(N)
10 FOR L=1TO N:A(L)=L:NEXT L
20 I=N
30 GOTO 110
40 FOR K=1 TO N:PRINTA(K);:NEXT K:PRINT:J=N-1
50 IF A(J)>A(J+1)ANDJ>0 THEN J=J-1:GOTO 50
60 I=J
70 IF I>0 THEN J=N:GOTO 80 ELSE GOTO 110
80 IF A(I)>A(J) THEN J=J-1:GOTO 80
90 SWAP A(I),A(J):P1=I+1:P2=N
100 IF P1<P2 THEN SWAP A(P1),A(P2):P1=P1+1:P2=P2-1:GOTO100
110 IF I>0 THEN GOTO 40
