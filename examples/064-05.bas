10 DATA o4e,o4f,o4g,o4a,o4b,o5c,o5d,o5e,o5f
20 DIM N$(8)
30 FOR I=0 TO 8
40    READ N$(I)
50 NEXT I
60 DEF FNF1(X)=(X+4)^2-10
70 DEF FNF2(X)=(2*X+1)^2+(X+1)*(1+(-1)^(X+1))/4+1
80 DEF FNF3(X)=3*((X+2)^2+X+2)/2-2
90 DEF FNF4(X)=5*(X^2+SGN(X)+1)
100 DEF FNS1(K)=1-K*(3-K)
110 DEF FNS2(K)=1-2*INT(K/2)
120 DEF FNS3(K)=(-1)^K
130 DEF FNPW(X,K)=1.5+(-1)^K*(X-1.5)
140 DEF FNR(X,K)=2*INT(1/(4-X))+INT((X+1)*(K+1)/16)+1
150 DEF FNF(X,K)=FNF1(FNPW(X,K))+FNS1(K)*FNF2(FNPW(X,K))+FNS2(K)*FNF3(FNPW(X,K))+FNS3(K)*FNF4(FNPW(X,K))
160 M$=""
170 FOR K=0 TO 3
180    FOR X=0 TO 3
190       I=FNF(X,K)MOD9:D=FNR(X,K)
200       IF I<0 THEN I=I+9
210       FOR J=1 TO D
220          M$=M$+N$(I)
230       NEXT J
240    NEXT X,K
250 PLAY M$
