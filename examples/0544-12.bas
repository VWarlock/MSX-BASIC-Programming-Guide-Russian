10 COLOR 1,15,8:SCREEN2:FOR T=0 TO 6.28*4 STEP .05:X=3*SIN(2*T):Y=3*COS(3*T):PSET(44+10*X,96-15*Y),1
55 U=30*COS(T)-30/5*COS(5*T):V=30*SIN(T)-30/5*SIN(5*T)
56 PSET(125+U,60+V),1:Z=T*COS(T):H=4*T*SIN(T):PSET(205+Z,96+H),1:E=25*COS(T)+25/2*COS(3*T):G=25*SIN(T)-25/2*SIN(3*T):PSET(125+E,130+G):NEXT
80 GOTO 80'�������� ��� ������ ��  80 A$=INPUT$(1) !
