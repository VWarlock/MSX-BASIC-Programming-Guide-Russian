10 SCREEN 5:COLOR 15,0,0
20 M$="National":M=LEN(M$)
30 FOR X=1 TO M
40    CD=&H2300+ASC(MID$(M$,X,1)) '������, &H2300 - �����?!
50    PUT KANJI (X*16-5,20),CD,11
55    PUT KANJI (X*16-5,70),CD,11
57    PUT KANJI (X*16-8,90),CD,11
60 NEXT:A$=INPUT$(1):SCREEN 0:LIST
