10 '���������� � ����������� �������.
11 '������ ���������������� ����� �������� � �������� ���������� ����� ���������� ��������������� ������ ��������, � ������� ���������� ���������� ����� �������� � �������.
12 '�� ����� ���������� �������� �������� �� �������� ������,� ���������� ���� ������ ��������. �� ��������� ���������� ������ �������� ������������ ��� ����������� ����������� �������� � ����� ������ ��� ������ ������������ ��� ������ � �������� ��������.
20 INPUT N:DIM A(N),I(N)
30  FOR M=1 TO N:INPUT A(M):NEXT M
40  FOR L=1 TO N:I(L)=L:NEXT
1000 '�������� ����������� ����������.
1040 FOR M=N TO 2 STEP -1
1050    FOR J=1 TO M-1
1052       I1=I(J):I2=I(J+1)
1060       IF A(I1)>=A(I2) THEN 1100
1070       I(J)=I2:I(J+1)=I1
1100    NEXT J
1110 NEXT M
1120 FOR L=1 TO N:I1=I(L):PRINT A(I1);:NEXT L
