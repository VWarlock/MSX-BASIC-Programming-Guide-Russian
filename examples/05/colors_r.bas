10 REM �����
20 REM
30 REM MSX Computer Magazine
40 REM
50 REM ������ ��� MSX 2!
60 REM
70 GOSUB 660:' �������������
80 ' ****************
90 ' * ��������� ������ *
100 ' ****************
110 FOR X=1 TO 5
120   FOR Y=1 TO 3
130     LINE ((X-1)*100,(Y-1)*50)-(X*100,Y*50),X+(Y-1)*5,BF
140     PRESET ((X-1)*100+8,(Y-1)*50+5)
150     PRINT #1, " ����: "X+(Y-1)*5
160     PRESET ((X-1)*100+16,(Y-1)*50+15)
170     PRINT #1, "R  G  B"
180     PRESET ((X-1)*100+8,(Y-1)*50+25)
190     PRINT #1, KW(X+(Y-1)*5,1);KW(X+(Y-1)*5,2);KW(X+(Y-1)*5,3)
200   NEXT Y
210 NEXT X
220 X=1: Y=1
230 ' **************
240 ' * ����� ����� *
250 ' **************
260 PRESET (0,160): PRINT #1, SPACE$(70)
270 PRESET (0,170): PRINT #1, SPACE$(50)
280 PRESET (0,160)
290 PRINT #1, "��������� ���� �� ������� � ������� �������"
300 PRESET (0,170)
310 PRINT #1, "<������> ��� �������� � ����� ��������� RGB"
320 PUT SPRITE 1,((X-1)*50+24,(Y-1)*50+35)
330 A$=INPUT$(1)
340 IF A$=CHR$(28) AND X<5 THEN X=X+1
350 IF A$=CHR$(29) AND X>1 THEN X=X-1
360 IF A$=CHR$(30) AND Y>1 THEN Y=Y-1
370 IF A$=CHR$(31) AND Y<3 THEN Y=Y+1
380 IF A$=CHR$(32) THEN KL=X+(Y-1)*5: GOTO 430
390 GOTO 320
400 ' **********************
410 ' * ����� �������� RGB *
420 ' **********************
430 PRESET (0,160):PRINT #1, SPACE$(50)
440 PRESET (0,170):PRINT #1, SPACE$(50)
450 PRESET (0,160)
460 PRINT #1, "����� R, G ��� B : �����/������, ��������� �������� : �����/����"
470 PRESET (0,170)
480 PRINT #1, "<������> ��� ������ ����� �� �������"
490 KW=1
500 PUT SPRITE 1,((X-1)*50-16+KW*12,(Y-1)*50+16)
510 A$=INPUT$(1)
520 IF A$=CHR$(28) AND KW<3 THEN KW=KW+1
530 IF A$=CHR$(29) AND KW>1 THEN KW=KW-1
540 IF A$=CHR$(30) AND KW(KL,KW)<7 THEN KW(KL,KW)=KW(KL,KW)+1
550 IF A$=CHR$(31) AND KW(KL,KW)>0 THEN KW(KL,KW)=KW(KL,KW)-1
560 IF A$=CHR$(32) THEN 260
570 COLOR=(KL,KW(KL,1),KW(KL,2),KW(KL,3))
580 PRESET ((X-1)*100+24*KW-16,(Y-1)*50+25)
590 PRINT #1, " "
600 PRESET ((X-1)*100+24*KW-16,(Y-1)*50+25)
610 PRINT#1,KW(KL,KW)
620 GOTO 500
630 '*****************
640 '* ������������� *
650 '*****************
660 SCREEN 7
670 DEFINT K
680 OPEN "GRP:" FOR OUTPUT AS #1
690 DIM KW(15,3)
700 RESTORE 770
710 FOR N1=1 TO 15
720   FOR N2=1 TO 3
730     READ KW(N1,N2)
740   NEXT N2
750 NEXT N1
760 ' RGB ������ ����������� ������
770 DATA 0,0,0,1,6,1,3,7,3,1,1,7,2,3,7,5,1,1,2,6,7,7,1,1,7,3,3,6,6,1,6,6,4,1,4,1,6,2,5,5,5,5,7,7,7
780 ' ����������� �������
790 RESTORE 920
800 FOR N=1 TO 8
810   READ A$
820   B$=B$+CHR$(VAL("&B"+A$))
830 NEXT N
840 SPRITE$(1)=B$
850 B$=""
860 FOR N=2 TO 9
870   B$=B$+CHR$(N)
880 NEXT N
890 COLOR SPRITE$(1)=B$
900 RETURN
910 ' ������-���������
920 DATA 00000001
930 DATA 00000010
940 DATA 00000100
950 DATA 00011110
960 DATA 00111111
970 DATA 01111110
980 DATA 11111110
990 DATA 01111100
