10 OPEN "SL" AS#1 LEN=8:FIELD #1,8 AS R$
20 INPUT X:RSET R$=MKD$(X)
40 PRINT R$,CVD(R$)
