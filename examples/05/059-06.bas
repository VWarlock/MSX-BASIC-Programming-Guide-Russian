10 COLOR 1,15:SCREEN 4,1
20 SPRITE$(0)=STRING$(8,255):SPRITE$(1)=STRING$(8,255)
30 SC$=STRING$(8,&B11100100):T=255
40 FOR I=1 TO 190:PUT SPRITE 0,(I,95),1,0
45 IF T=I THEN COLOR SPRITE$(0)=SC$:FOR A=1 TO 300:NEXTA
50 PUT SPRITE 1,(T,95),5,1:T=T-1:NEXTI
60 GOTO 60
