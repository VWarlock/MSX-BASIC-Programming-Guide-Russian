20 B=1000:D=1:Q=1:PRINT "�� �����";B;"�����":GOTO 110
30 I=I+1:PRINT I;"�����������."
40 A=INT(B/3):PRINT "�������� ��� ���������� ������ �� 4 ����� ��";A;",";A;",";A;"�";B-3*A-Q+D;"�����."
50 PRINT "������� 2 ����� ��";A;"�����."
60 PRINT "���� ���� �� ��� �����, �� ����� ��� ����� ����� � ���";B-3*A-Q+D;"������."
70 PRINT "��������� ������ �� �������� ����������."
80 PRINT "��� ��������� ���������� ���������� ������� ����� �������."
90 IF NOT B/3=A THEN Q=Q-1
100 B=A:P$=INPUT$(1):RETURN
110 FOR T=1 TO 6:GOSUB 30:NEXT
120 B=3:D=0:Q=0:GOSUB 30
130 PRINT "����, �� ����� ��������� ������."
