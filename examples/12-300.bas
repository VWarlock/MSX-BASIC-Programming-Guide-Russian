10 INPUT"������� ����� � ������ �������";N:DIM A1(N),A2(N),A3(N)
20 INPUT"���� ����� ������������ �������";F
30 FOR I=1 TO N:A1(I)=INT(2*F*RND(1)-F):PRINT A1(I);:NEXT:PRINT:PRINT
40 FOR I=1 TO N:A2(I)=INT(2*F*RND(1)-F):PRINT A2(I);:NEXT:PRINT:PRINT
50 FOR I=1 TO N:A3(I)=INT(2*F*RND(1)-F):PRINT A3(I);:NEXT:PRINT:PRINT
60 PRINT "� ��� �� �����, ������� ����������� � ���� �������� �����:"
70 FOR I=1 TO N:FOR J=1 TO N:FOR K=1 TO N
80 IF A1(I)=A2(J) AND A1(I)=A3(K) THEN PRINT A1(I);:NEXT I ELSE NEXT K,J,I
90 PRINT :PRINT"���, �� ��� �����, ������������� � ���� �������� �����, ��� �������� �� �����."
