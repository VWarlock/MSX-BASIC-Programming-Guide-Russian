100 INPUT"������� a,b,c";A,B,C
110 DISC=B*B-4*A*C:W=1/2/A:Z=-B/2/A
120 IF ABS(DISC)<1E-14 THEN PRINT"������� ������,x=";Z:GOTO 100'������� ABS(DISC)<1.E-14 ����� ������ ������� DISC=0 � ����� ����������� ������ ����������.
130 IF DISC<0 THEN 160
140 PRINT "�����";Z+SQR(DISC)*W;
150 PRINT "�";Z-SQR(DISC)*W:GOTO 100
160 PRINT "������ �����:";Z;"+/-";SQR(-DISC)*W;"i":GOTO100
