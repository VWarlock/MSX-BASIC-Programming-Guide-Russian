10 INPUT X$,N
20 U$=MID$(X$,LEN(X$)-N+1)
30 V$=RIGHT$(X$,N):PRINT U$;V$
