5 PRINT"������� ��������������� ����� ������� �������:"
10 FOR I=0 TO 7:INPUT T(I):NEXT
20 INPUT"������� ��� ����������� �������";K%
30 FOR I=0 TO 7:VPOKE 2048+K%*8+I,T(I):NEXT
