40 CODE$="������":COUNT=0:PRINT"���":INPUT N$
70 PRINT "������:"
110 P$=INPUT$(6) '������  � � � � �  ��������
120 IF P$=CODE$ THEN GOTO 150
130 COUNT=COUNT+1
140 IF COUNT<3 THEN GOTO 70 ELSE PRINT"������ ������":END
150 PRINT:PRINT N$:PRINT"�������, ��������":END
