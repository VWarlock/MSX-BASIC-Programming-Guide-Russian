10 COLOR 1,15,8:SCREEN2:R=100:P=50
20 I=I+.1:P=P-.5:R=R-Q:Q=Q+.1:Y=P*SIN(I):CIRCLE(128,Y+95),R,,,,.2
60 GOTO 20
