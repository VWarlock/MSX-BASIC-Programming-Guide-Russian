10 SCREEN2:PSET(115,95):GOSUB 100:END
100 RESTORE 1000:READ N:FOR I=1 TO N:READ X,Y
110 LINE -STEP(X,Y):NEXT:A$=INPUT$(1):END
1000 DATA 6,35,0,23,-35,-23,-35,-35,0,-23,35,22,35
