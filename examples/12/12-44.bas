20 DIM C$,B,B$,W,A,A$,N$,N,T$,L$,K$,T,L,X$
30 PRINT "������� ����������"
40 PRINT "�� ������ ������ ������� �������"+CHR$(34)+"CAPS"+CHR$(34)
50 PRINT "��������!"
60 PRINT "� ������� ������ �� ���� ����� 0!"
70 PRINT "�������� ������������� ������ ��� �������������� ������ �������."
80 PRINT"��� ������� �� ��������� ����������� ����� ����� ��������."
90 GOTO 240
100 '          OOOOO From ARABIC to ITALIC OOOOO
110 DATA 1000,M,900,CM,500,D,400,CD,100,C,90,XC,50,L,40,XL,10,X,9,IX,5,V,4,IV,1,I
120 RESTORE 110:C$=""
130 READ B,B$
140 IF B<=W THEN C$=C$+B$:W=W-B:GOTO 140
150 IF W>0 GOTO 130
160 RETURN
170 '          OOOOO From ITALIC to ARABIC OOOOO
180 DATA 1000,M,900,CM,500,D,400,CD,100,C,90,XC,50,L,40,XL,10,X,9,IX,5,V,4,IV,1,I
190 RESTORE 180:N=0
200 READ A,A$
210 IF A$=LEFT$(N$,LEN(A$))THEN N$=RIGHT$(N$,LEN(N$)-LEN(A$)):N=N+A:GOTO 210
220 IF N$>"" GOTO 200
230 RETURN
240 LINEINPUT "������ �����:";T$
250 LINEINPUT "������ �����:";L$
260 LINEINPUT "���� �������� (+,-,*,/,^):";K$
270 Y$=INKEY$
280 INPUT "�,�����,�� ������� ������� ������? (��/���)";Y$
290 IF Y$="�" OR Y$="�" THEN N$=T$:GOSUB 180:T=N:W=INT(SQR(T)):GOSUB 110:PRINT "������ �� ";T$;" �����: ";C$:GOTO 400
300 IF Y$="�" OR Y$="�" THEN 310 ELSE 270
310 N$=T$:GOSUB 180:T=N:N$=L$:GOSUB 180:L=N
320 IF K$="+" THEN W=T+L:GOTO 370
330 IF K$="-" THEN W=T-L:GOTO 370
340 IF K$="*" THEN W=T*L:GOTO 370
350 IF K$="/" THEN W=INT(T/L):GOTO 370
360 IF K$="^" THEN W=T^L
370 IF W<0 THEN W=-W:X$="=-" ELSE X$="="
380 GOSUB 110
390 PRINT T$;K$;L$;X$;C$
400 RUN 90
