5 INPUT "������� �=2,5,7,10,13";P:SCREEN2
10 RAD=60
20 FOR ANG%=0 TO 360 STEP P
30 RNG=ANG%*6.28/360:RG2=(ANG%+150)*6.28/360
50 X1=RAD*COS(RNG)+110:Y1=RAD*SIN(RNG)+90
70 X2=RAD*COS(RG2)+110:Y2=RAD*SIN(RG2)+90
85 LINE(X1,Y1)-(X2,Y2)
90 NEXT ANG%
100 GOTO 100
