10 DEFINT I,J:FOR I=100 TO 999
15 '���� ��������� ������� �����!
20 P=1:FOR J=1 TO I\100:P=P*J:NEXT J
25 '���� ��������� ������ �����!
30 Y=1:FOR J=1 TO (IMOD100)\10:Y=Y*J:NEXT J
40 Z=1:A=(IMOD100)MOD10
45 '���� ��������� ������� �����!
50 FOR J=1 TO A:Z=Z*J:NEXT J
60 IF P+Y+Z=I THEN K=K+1:PRINT "������� �����:";I
70 NEXT I:PRINT"���������� ����� �����:";K 
