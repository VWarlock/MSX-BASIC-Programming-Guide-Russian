10 SCREEN 2 '����� � SCREEN 8
20 OPEN "GRP:" AS #1 
30 PSET(20,20) '����� � PRESET(20,20)
40 PRINT #1,PEEK(&HF3E9);PEEK(&HF3EA);PEEK(&HF3EB)
50 CLOSE #1
60 GOTO 60 '������ ��������� ��������� ������� �� ����������� ����� ������� ���� �����������, ���� � �������
