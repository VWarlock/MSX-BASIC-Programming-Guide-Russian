10 INPUT X$,N,K
15 IF N<0 OR N>LEN(X$) OR K<0 OR K>LEN(X$) THEN PRINT"�� ���������! ���������!":GOTO 10
20 Y$=LEFT$(X$,N)+RIGHT$(X$,K)
30 PRINT "���������:";Y$
40 END
