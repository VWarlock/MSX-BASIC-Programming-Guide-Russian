10 COLOR15,3:SCREEN5
20 OPEN"GRP:"AS#1:SET PAGE 0,0
30 LINE (100,0)-(130,30),7,BF
40 LINE (100,40)-(130,70),6,BF
50 IF INKEY$="" THEN 50
60 SETPAGE 0,1:CLS:SETPAGE 1,1
70 COPY (0,0)-(255,100),0 TO (100,0),1,PSET
80 PSET(205,10),1:PRINT#1,POINT(210,5)
90 PSET(205,50),1:PRINT#1,POINT(210,45)
100 GOTO 100
