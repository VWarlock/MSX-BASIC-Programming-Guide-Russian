10 REM ������������ �����
20 MAXFILES=2:OPEN"������" AS#2 LEN=8:FIELD #2,8 AS M 
50 FOR I=1 TO 30
60    INPUT"������� �����";:LSET M=MKD$(A):PUT #2
90 NEXT
100 CLOSE #2
