10 COLOR 1,11,7:SCREEN2:OPEN "GRP:"FOR OUTPUT AS #1
30 PSET (69,80),11:PRINT #1,"��� 9.1 �����":GOSUB 1000'WW�
55 LINE(69,80)-(100,87),11,BF '��������� �������������,���������� ����� �������� ��������� ������ ����.
56 GOSUB 1000'WW�
60 COLOR 11,11,7:PSET (69,80),11:PRINT #1,"��� 9.1 �����"
68 GOSUB 1000'WW�
69 COLOR 1,11,7:PSET (69,80),11:PRINT #1,"�����"
100 FOR I=1 TO 1000:NEXT:CLOSE#1
110 END
1000 FOR I=1 TO 1000:NEXT:RETURN 'WW�
