10 '� � � � � �
20 SOUND 0,255:SOUND 1,0:SOUND 8,15:SOUND 7,&B00111110
60 '���������� ������ �����
70 FOR I=252 TO 170 STEP -2:SOUND 0,I:NEXT
100 '�������� ������ �����
110 FOR I=170 TO 252 STEP 1:SOUND 0,I:NEXT
140 GOTO 70
