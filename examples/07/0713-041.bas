10 CLS:X=16:Y=11
30 D=STICK(0)
40 IF D=1 OR D=2 OR D=8 THEN Y=Y-1
50 IF D=4 OR D=5 OR D=6 THEN Y=Y+1
60 IF D=2 OR D=3 OR D=4 THEN X=X+1
70 IF D=6 OR D=7 OR D=8 THEN X=X-1
80 IF X<0 THEN X=0 ELSE IF X>36 THEN X=36
90 IF Y<0 THEN Y=0 ELSE IF Y>20 THEN Y=20
95 LOCATE X,Y
100 IF STRIG(0) THEN PRINT "O":GOTO 30 ELSE PRINT "+":GOTO 30
