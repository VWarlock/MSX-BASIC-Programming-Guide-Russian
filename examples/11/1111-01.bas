10 SCREEN 0:WIDTH 40
20 FOR I=0 TO 2
30    GOSUB 100:GOSUB 200 'WW�
40 NEXT I
50 IF INKEY$="" THEN 50
60 I=(I+1)MOD3:GOSUB 100 'WW�
70 GOTO 50
90 'OOOOO ������������ 1 OOOOO
100 IF I=0 THEN BASE(0)=0 ELSE BASE(0)=&H2000+(I-1)*&H400
110 IF I=0 THEN  POKE &HF922,&H0:POKE &HF923,&H0 ELSE  POKE &HF922,0:POKE &HF923,&H20+(I-1)*4'������ � ����� NAMBAS
120 RETURN 'WW�
190 'OOOOO ������������ 2 OOOOO
200 CLS:FOR J=0 TO 50:PRINT "PAGE";I;:NEXT:RETURN 'WW�
