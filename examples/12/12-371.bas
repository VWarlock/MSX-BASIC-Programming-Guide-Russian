10 COLOR 1,15,8:SCREEN 2,2
30 LINE(0,180)-STEP(255,12),8,BF
50 OPEN"grp:"FOR OUTPUT AS#1
70 DEFINT A-Z:OL=35:K=8:E=8
90 Y8=25:X8=70
110 FOR RO=Y8 TO Y8+64 STEP 64:FOR I=X8 TO X8+32*3 STEP 32:LINE(I+1,RO)-STEP(15,15),,BF:LINE(I+17,RO+16)-STEP(15,15),,BF:LINE(I+1,RO+32)-STEP(15,15),,BF:LINE(I+17,RO+48)-STEP(15,15),,BF:NEXTI,RO
130 LINE(X8,Y8-1)-(X8+1+16*8,Y8-1)
150 LINE(X8,Y8+16*8)-(X8+16*8+1,Y8+16*8)
170 LINE(X8,Y8-1)-(X8,Y8+16*8)
190 LINE(X8+1+16*8,Y8-1)-(X8+1+16*8,Y8+16*8)
210 PRESET(X8+5,Y8-11):PRINT #1,"1 2 3 4 5 6 7 8"
230 PRESET(X8-7,Y8+5):PRINT #1,"1"
250 PRESET(X8-7,Y8+21):PRINT #1,"2"
270 PRESET(X8-7,Y8+37):PRINT #1,"3"
290 PRESET(X8-7,Y8+53):PRINT #1,"4"
310 PRESET(X8-7,Y8+69):PRINT #1,"5"
330 PRESET(X8-7,Y8+85):PRINT #1,"6"
350 PRESET(X8-7,Y8+101):PRINT #1,"7"
370 PRESET(X8-7,Y8+117):PRINT #1,"8"
390 COLOR10,8,8:PRESET(5,182):PRINT #1,"SCORE:"
410 PRESET(6,182):PRINT #1,"SCORE:":COLOR1,15,8
430 COLOR10,8,8:PRESET(165,182):PRINT #1,"HISCORE:"
450 PRESET(166,182):PRINT #1,"HISCORE:":COLOR1,15,8
470 DATA 1,1,1,2,7,10,16,23,13,1,1,2,7,15,0,0,0,192,240,112,56,24,24,24,56,48,16,8,252,254,0,0
475 RESTORE 470:FOR TI=1 TO 32:READ R:XO$=XO$+CHR$(R):NEXT
490 SPRITE$(20)=XO$:XO$=""
491 RESTORE 1280:FOR TI=1 TO 32:READ R:X1$=X1$+CHR$(R):NEXT
492 SPRITE$(1)=X1$:X1$=""
493 RESTORE 1290:FOR TI=1 TO 32:READ R:X2$=X2$+CHR$(R):NEXT
494 SPRITE$(2)=X2$:X2$=""
495 RESTORE 1300:FOR TI=1 TO 32:READ R:X3$=X3$+CHR$(R):NEXT
496 SPRITE$(3)=X3$:X3$=""
497 RESTORE 1310:FOR TI=1 TO 32:READ R:X4$=X4$+CHR$(R):NEXT
498 SPRITE$(4)=X4$:X4$=""
499 RESTORE 1320:FOR TI=1 TO 32:READ R:X5$=X5$+CHR$(R):NEXT
500 SPRITE$(5)=X5$:X5$=""
501 SPRITE$(6)=SPRITE$(4)
502 SPRITE$(7)=SPRITE$(3)
503 SPRITE$(8)=SPRITE$(2)
504 RESTORE 1330:FOR TI=1 TO 32:READ R:X9$=X9$+CHR$(R):NEXT
505 SPRITE$(9)=X9$:X9$=""
506 RESTORE 1340:FOR TI=1 TO 32:READ R:X10$=X10$+CHR$(R):NEXT
507 SPRITE$(10)=X10$:X10$=""
508 SPRITE$(11)=SPRITE$(3)
509 RESTORE 1350:FOR TI=1 TO 32:READ R:X12$=X12$+CHR$(R):NEXT
510 SPRITE$(12)=X12$:X12$=""
511 RESTORE 1360:FOR TI=1 TO 32:READ R:X13$=X13$+CHR$(R):NEXT
512 SPRITE$(13)=X13$:X13$=""
513 SPRITE$(14)=SPRITE$(12)
514 SPRITE$(15)=SPRITE$(3)
515 SPRITE$(16)=SPRITE$(10)
530 DIM A(K,E):I=1:J=1:X5=X8:Y5=Y8:X6=X8+16*8:Y6=Y8+16*8:DO=16
550 XX=(J-1)*DO+X8:YY=(I-1)*DO+Y8:PUT SPRITE 5,(XX,YY),10,20
570 A$=INPUT$(1):IF A$="" THEN 570
590 Z$=CHR$(30)+CHR$(31)+CHR$(28)+CHR$(29)+CHR$(32)
610 W=INSTR(Z$,A$):ON W GOTO 650,690,710,730,750
630 GOTO 570
650 IF YY-DO<Y5 THEN A$="":GOTO 570
670 YY=YY-DO:I=I-1:PUT SPRITE5,(XX,YY),10,20:GOTO 570
690 IF YY+DO>=Y6 THEN A$="":GOTO 570 ELSE YY=YY+DO:I=I+1:PUT SPRITE5,(XX,YY),10,20:GOTO 570
710 IF XX+DO>=X6 THEN A$="":GOTO 570 ELSE XX=XX+DO:J=J+1:PUT SPRITE5,(XX,YY),10,20:GOTO 570
730 IF XX-DO<X5 THEN A$="":GOTO 570 ELSE XX=XX-DO:J=J-1:PUT SPRITE5,(XX,YY),10,20:GOTO 570
750 IF F>=1 THEN 790 ELSE A(I,J)=1:GOSUB1150:Q=5:GOSUB1010:IF(I+J)MOD2=0 THEN COLOR15,1,8:PRESET(XX+5,YY+5):PRINT #1,"":COLOR 1,15,8 ELSE PRESET(XX+5,YY+5):PRINT #1,""
770 F=1:K1=I:K2=J:GOTO 570
790 FOR V4=-2 TO 2:FOR H4=-2 TO 2
810 IF V4=0 OR H4=0 OR ABS(V4)=ABS(H4) THEN NEXT H4,V4 ELSE IF I=K1+V4 AND J=K2+H4 AND A(I,J)<>1 THEN 850 ELSE NEXT H4,V4:GOTO 570
830 GOTO 570
850 K1=I:K2=J:A(I,J)=1:GOSUB1150:Q=Q+5:GOSUB1010:IF (I+J)MOD2=0 THEN COLOR15,1,8:PRESET(XX+5,YY+5):PRINT #1,"":COLOR 1,15,8 ELSE PRESET(XX+5,YY+5):PRINT #1,""
870 FOR V5=-2 TO 2:FOR H5=-2 TO 2
890 IF V5=0 OR H5=0 OR ABS(V5)=ABS(H5) THEN 950
910 IF I+V5>K OR I+V5<1 OR J+H5>E OR J+H5<1 THEN 950 ELSE 930
930 IF A(I+V5,J+H5)=1 THEN 950 ELSE BOB=BOB+1
950 NEXT H5,V5
970 IF BOB<>0 THEN BOB=0:GOTO 570
990 GOTO 1050
1010 COLOR 15,8,8:PRESET(45,182):PRINT#1,Q
1030 PRESET(46,182):PRINT#1,Q:COLOR1,15,8:RETURN
1050 FOR L1=1 TO 8:PUT SPRITE 1,(119,79),8,L1:PUTSPRITE2,(135,79),8,L1+8:FORC=0 TO 35:NEXTC:NEXT
1070 XIT$=INKEY$:IFXIT$="" THEN 1050 ELSE PUT SPRITE1,(0,0),15,L1:PUT SPRITE 2,(16,0),15,L1+8
1090 FOR I1=1 TO 8:FORJ1=1 TO 8
1110 IF(I1+J1)MOD2=0 THEN NEXTJ1,I1 ELSECOLOR15,1,8:PSET((I1-1)*16+X8+5,(J1-1)*16+Y8+5):PRINT #1,"":COLOR1,15,8:NEXTJ1,I1
1130 GOSUB 1150:GOTO 1190
1150 COLOR 8,15,8:PSET(45,182):PRINT #1,Q
1170 PSET(46,182):PRINT #1,Q:COLOR 1,15,8:RETURN
1190 IF Q<=M1 THEN 1270
1210 COLOR 8,5,8:PSET(225,182):PRINT #1,M1:PSET(226,182):PRINT #1,M1:COLOR1,15,8
1230 M1=Q
1250 COLOR 5,8,8:PRESET(225,182):PRINT #1,M1:PRESET(226,182):PRINT #1,M1:COLOR1,15,8
1270 ERASE A:F=0:Q=0:CLOSE:GOTO 50
1280 DATA 0,0,127,128,128,190,179,179,190,179,179,179,190,128,128,127,0,0,255,0,0,51,51,51,51,30,12,12,12,0,0,255
1290 DATA 0,0,0,0,0,127,128,191,190,179,190,128,127,0,0,0,0,0,0,0,0,255,0,51,51,30,12,0,255,0,0,0
1300 DATA 0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0,0,0,0,0
1310 DATA 0,0,0,0,0,127,128,190,179,190,191,128,127,0,0,0,0,0,0,0,0,255,0,12,30,51,51,0,255,0,0,0
1320 DATA 0,0,127,128,128,190,179,179,179,190,179,179,190,128,128,127,0,0,255,0,0,12,12,12,30,51,51,51,51,0,0,255
1330 DATA 0,0,255,0,0,63,51,53,60,52,49,51,63,0,0,255,0,0,254,1,1,25,25,25,25,25,1,25,25,1,1,254
1340 DATA 0,0,0,0,0,255,0,63,60,53,63,0,255,0,0,0,0,0,0,0,0,254,1,25,25,1,25,1,254,0,0,0
1350 DATA 0,0,0,0,0,255,0,63,53,60,63,0,255,0,0,0,0,0,0,0,0,254,1,25,1,25,25,1,254,0,0,0
1360 DATA 0,0,255,0,0,63,51,49,52,60,53,51,63,0,0,255,0,0,254,1,1,25,25,1,25,25,25,25,25,1,1,254
