10 DEFINT I,J,N:INPUT N:DIM A(N):X=RND(-TIME):FOR I=1 TO N:A(I)=INT(40*RND(1)):PRINT A(I);:NEXT:M=1:PRINT
20 FOR I=1 TO N-1:FOR J=I+1 TO N
30 Y=-((A(I)>A(J))*A(I))-(A(I)<=A(J))*A(J):M=-(Y>M)*Y-(Y<=M)*M:NEXT J:NEXT I:PRINT"���������� �������:";M
