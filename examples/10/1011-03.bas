10 OUT &HAA,6 OR (INP(&HAA) AND &HF0):B=INP(&HA9)
20 IF (B AND 1)=0 THEN PRINT "������ ������� SHIFT"
30 IF (B AND 2)=0 THEN PRINT "������ ������� CTRL"
40 IF (B AND 4)=0 THEN PRINT "������ ������� GRAPH":GOTO 10 ELSE 10
