10 PRINT "Draw,Print,Change,Quit:";:I$=INPUT$(1)
20 ON INSTR(2," DdPpCcQq",I$)/2 GOSUB 100,200,300,400
30 PRINT:GOTO 10
100 PRINT "D":RETURN 'WW�
200 PRINT "P":RETURN 'WW�
300 PRINT "C":RETURN 'WW�
400 PRINT "Q":RETURN 'WW�
