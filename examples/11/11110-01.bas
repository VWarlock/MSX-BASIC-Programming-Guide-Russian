10 SCREEN 0:CLS:KEYOFF
20 OUT &H99,0:OUT &H99,0 OR &H40
30 FOR I=1 TO 20
40    READ R$:R=ASC(R$):OUT &H98,R
50 NEXT I:PRINT '���������� ������ � ���� ������ �������� PRINT
60 DATA �,�,�,�,�,�,�,�,�," ",�,�,�,�,�,�,�,�,�,!
