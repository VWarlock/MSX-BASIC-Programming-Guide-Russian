40 CLS:WIDTH 40
60 PRINT "������� �������� ������":PRINT "���������� ��������� ���"
80 PRINT "������� ������ - ��� ����������"
90 PRINT:PRINT:PRINT "���������":PRINT:PRINT
150 F=-1
160 FOR I=0 TO 4:IF STRIG(I) THEN F=I:NEXT I
190 IF F=-1 THEN GOTO 160
200 BEEP
240 IF F=0 THEN PRINT "���������� ";
250 IF F=1 OR F=3 THEN PRINT "�������� �";
260 IF F=2 OR F=4 THEN PRINT "�������� B";
270 PRINT " � ��������":END
