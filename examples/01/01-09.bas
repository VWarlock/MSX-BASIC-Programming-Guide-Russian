5 '���������� ����� . ������� �����-�����
10 X=RND(-TIME):INPUT"���������� �������� ����� -";N
20 FOR I=1 TO N:X1=RND(1):X2=RND(1)
30 IF X1^2+X2^2<1 THEN IN=IN+1
40 NEXT:PRINT "��";4*IN/N
