10 INPUT "����� ������";N
20 INPUT "����� �������";T
30 OUT &HAA,INP(&HAA) AND &HF0 OR N
40 B=((INP(&HA9) AND 2^T)=0)
50 IF B THEN PRINT "������� ������":END
60 GOTO 30
