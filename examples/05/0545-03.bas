10 SCREEN2:XM=256:YM=191:XC=XM/2:YC=YM/2
50 FOR X=0 TO XM:C=INT(RND(1)*16):LINE (XC,YC)-(X,0),C
80 NEXT X:FOR Y=0 TO YM:C=INT(RND(1)*16):LINE(XC,YC)-(XM,Y),C:NEXTY
140 FOR X=XM TO 0 STEP-1:C=INT(RND(1)*16):LINE(XC,YC)-(X,YM),C:NEXT X:FOR Y=YM TO 0 STEP-1:C=INT(RND(1)*16):LINE(XC,YC)-(0,Y),C:NEXTY
220 GOTO 220
