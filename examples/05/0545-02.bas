10 K=8*ATN(1):SCREEN 2:PSET(128,96+80*COS(10))
20 FOR I=0TO K*6+.05 STEP.2:X=100*SIN(I):Y=80*COS(I+10)
40 LINE-(128+X,96+Y),1,B:NEXT:A$=INPUT$(1)
