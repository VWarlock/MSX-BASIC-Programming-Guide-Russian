10 INPUT"������� ����� ���������� ���������";N:PRINT"������������ ��� �����:";
20 FOR I=10 TO N:B=I^2
40 B$=MID$(STR$(B),2):IF VAL(RIGHT$(B$,2))<>0 THEN 50 ELSE NEXT I: END
50 IF SQR(VAL(LEFT$(B$,2)))=FIX(SQR(VAL(LEFT$(B$,2)))) AND SQR(VAL(RIGHT$(B$,2)))=FIX(SQR(VAL(RIGHT$(B$,2))))THENPRINT I;:NEXTI ELSE NEXTI
