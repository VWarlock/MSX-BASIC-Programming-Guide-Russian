10 OPEN "GAMES" FOR INPUT AS #1   '����������� "������" ����
20 OPEN "GAMES2" FOR OUTPUT AS #2 '����������� "�����" ���� (������)
30 FOR X=1 TO 5
40    INPUT #1,F$
50    IF F$="���������" THEN F$="������ ����"
60    PRINT #2,F$
70 NEXT X
80 CLOSE 1,2                      '��� ����� �����������
90 KILL"GAMES"                    '�������� ��������� �����
100 NAME "GAMES2" AS "GAMES"      '�������������� "������" �����
