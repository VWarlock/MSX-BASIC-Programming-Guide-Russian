10 COLOR 15,3,4:SCREEN 5:OPEN"GRP:"AS#1:SET PAGE 0,0
30 LINE(100,0)-(130,30),0,BF:LINE(100,40)-(130,70),2,BF
50 IF INKEY$="" THEN 50                   
60 SET PAGE 0,1:CLS:SET PAGE 1,1          
70 COPY (0,0)-(255,100),0 TO (100,0),1,TPSET '���������� TAND!
80 PSET(205,10),1:PRINT#1,POINT(210,5)
90 PSET(205,50),1:PRINT#1,POINT(210,45)
100 A$=INPUT$(1)
