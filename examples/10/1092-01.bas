1 GOTO 10
2 GOTO 30
10 LINEINPUT"�������  �������������  ������ �������:";F$
11 INPUT"������� ����� ������, ���������� �������� �������� ������� ������������ DEFFN (51< ����� ������ <59)";SN:GOSUB 2410
13 GOSUB 1550 '���������� F$
15 F$=STR$(SN)+F$:F$=MID$(F$,2,LEN(F$)-1)
20 GOSUB 1880
25 F$="goto2":GOSUB 1880:END
30 GOSUB 1730 '�������������� F$
50 'OO ��������� ������������� ������� Y(x) OO
60 INPUT"�������[A,B] � ��� ������������� H";A,B,H
65 FOR X=A TO B STEP H:PRINT X;FNY(X):NEXT
90 END
1550 'OOOOO � � � � � � � � � � � �  F$ OOOOO
1590 F$="deffny(x)="+F$:POKE &HF600,LEN(F$)
1620 FOR I=1 TO LEN(F$):POKE &HF601+I,ASC(MID$(F$,I,1)):NEXT
1720 RETURN'WW�
1730 'OOOOO � � � � � � � � � � � � � �  F$ OOOOO
1740 LF=PEEK(&HF600):F$=""
1750 FOR I=1 TO LF:C=PEEK(&HF601+I):F$=F$+CHR$(C):NEXT
1780 RETURN'WW�
1880 'OOOOO � � � � � � � � � � � �  � � � � � � � � � � OOOOO
1890 F$=F$+CHR$(13)
1900 AD=PEEK(&HF3F9)*256+PEEK(&HF3F8)-65536!
1910 L1=&HFC17-AD+1
1920 IF LEN(F$)<=L1 THEN GOTO 1990
1930 L2=LEN(F$)-L1:N=0
1940 FOR I=AD TO &HFC17:N=N+1
1950 POKE I,ASC(MID$(F$,N,1)):NEXT
1960 FOR I=&HFBF0 TO &HFBF0+L2-1:N=N+1
1970 POKE I,ASC(MID$(F$,N,1)):NEXT
1980 AD=&HFBF0+L2+65536!:POKE&HF3F9,FIX(AD/256):POKE&HF3F8,AD-FIX(AD/256)*256:GOTO 2050
1990 N=0
2000 FOR I=AD TO AD+LEN(F$)-1:N=N+1
2010 POKE I,ASC(MID$(F$,N,1)):NEXT
2020 IF LEN(F$)<L1 THEN AD=AD+LEN(F$) ELSE AD=&HFBF0
2030 AD=AD+65536!
2040 POKE&HF3F9,FIX(AD/256):POKE&HF3F8,AD-FIX(AD/256)*256
2050 RETURN'WW�
2410 IF LEN(F$)>19 THEN CLS:LOCATE 1,10:PRINT"��� ��������� ����� �����������:":GOTO 2420 ELSE GOTO 2460
2420 PRINT:PRINT "����� ������� �� ������ ������������ 19 ��������!";LEN(F$)
2440 PRINT:LOCATE 1,23:PRINT"��� ����������� ������� ����� �������"
2450 W$=INKEY$:IF W$="" THEN 2450 ELSE GOTO 10
2460 RETURN'WW�
