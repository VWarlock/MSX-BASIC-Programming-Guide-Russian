10 INPUT X$,Y$
30 FOR I=1 TO LEN(Y$):FOR J=1 TO LEN(X$)
50 IF MID$(Y$,I,1)=MID$(X$,J,1) THEN A$="��":NEXT I ELSE A$="���":NEXT J
80 PRINT A$:END
