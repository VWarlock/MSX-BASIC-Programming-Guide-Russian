50 ON STRIG GOSUB 270
60 CLS:R=RND(-TIME):PRINT "���� �������"
100 PRINT "����� ��������� ������, ������� ������� '������'"
130 T=INT(RND(1)*500)+10
140 ON INTERVAL=T GOSUB 200
150 INTERVAL ON
160 GOTO 160
190 '������������ ������� �������
200 INTERVAL OFF:BEEP:TIME=0:STRIG(0)ON
230 GOTO 230
260 '������ ���������� �� ���������
270 STRIG(0) OFF
280 PRINT "���� �������":PRINT"=";TIME/60;"������":END
