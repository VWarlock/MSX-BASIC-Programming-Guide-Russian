10 '���������� FCB0, FCB1, FCB2 � FCB3
20 '�������� ����� "����" � ������� #2
30 MAXFILES=3:OPEN "����" AS#2 LEN=13
40 '����������� ������� ������
50 FIELD #2,8 AS L$, 5 AS M$
60 '������������ ������ 10 �������
70 FOR K=1 TO 10
80    INPUT"X$-8";X$:INPUT"Y$-5";Y$
90    LSET L$=X$:RSET M$=Y$:PUT #2,K
99 NEXT:END
