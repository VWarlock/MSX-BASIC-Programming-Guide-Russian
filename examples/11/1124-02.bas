5 SCREEN 0
10 CLS:KEYOFF
20 FOR I=0 TO 5:PRINT "�����":NEXT
30 FOR J=0 TO 7
40    FOR K=0 TO 10:NEXT K
50    VDP(23+1)=J
60 NEXT J
70 IF INKEY$="" THEN 30
80 VDP(23+1)=0:END
