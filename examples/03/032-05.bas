10 PRINT "������� ����������� N,N>1"
20 INPUT N:PRINT N;"=";:P=2
30 D=N/P
40 IF D=INT(D) THEN PRINTS$;P;:S$="*":N=D:GOTO 30 ELSE P=P+1
50 IF N>=P THEN 30
60 PRINT:END
