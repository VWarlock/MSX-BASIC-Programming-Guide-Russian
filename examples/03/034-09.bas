10 DEFINT N,I:INPUT "������� N";N
20 DIM A(N)'�������� ������� �
30 FOR I=1 TO N:INPUT A(I):NEXTI'���� ������� A
40 FOR I=1 TO N
50 IF A(I)>0 THEN PRINT"������� ������:";I:GOTO 60 ELSE NEXTI
60 PRINT"We are out of the loop!" '�� ����� �� �����!
