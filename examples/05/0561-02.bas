10 SCREEN 1,3:KEY OFF
20 DATA 1,3,7,15,31,63,127,255
30 DATA 255,127,63,31,15,7,3,1
40 DATA 128,192,224,240,248,252,254,255
50 DATA 255,254,252,248,240,224,192,128
60 FOR N=1 TO 32
70  READ A
80  F$=F$+CHR$(A)
90 NEXT
100 SPRITE$(1)=F$
110 PUT SPRITE 1,(0,0)
120 GOTO 120
