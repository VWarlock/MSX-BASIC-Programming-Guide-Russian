10 CALL NETEND
20 INPUT"������� ����";N1:INPUT"������� ����";N2:INPUT"��������";D
30 PRINT"������ ��������:";
40 OUT&H99,N1:OUT&H99,N2:PRINT INP(&H98)
50 OUT&H99,N1:OUT&H99,N2 OR&H40:OUT&H98,D
60 PRINT"����� ��������:";
70 OUT&H99,N1:OUT&H99,N2:PRINT INP(&H98)
80 CALL NETINI:'������ �������� ������� CALL NETEND
