10 SCREEN 4,1:SPRITE$(0)=STRING$(8,255):T=255
40 FOR I=1 TO 155:PUT SPRITE 0,(I,95),1,0:A=I+1
50 IF T=I THEN COLOR SPRITE(0)=127:FOR A=1 TO 300:NEXTA
60 PUT SPRITE 1,(T,95),7,0:T=T-1:NEXTI
70 GOTO 70
