10 '�����  � � � � � � � �
20 SCREEN 0,0,0
30 FOR I=0 TO 12:READ S:SOUND I,S:NEXT I
70 PRINT "������� '�' ��� ��������"
80 PRINT "������� '�' ��� ��������� ��������"
90 A$=INPUT$(1)
100 IF A$="�" OR A$="�" THEN SOUND 7,&B00111000:SOUND 13,1
110 IF A$="�" OR A$="�" THEN SOUND 7,&B00000111:SOUND 13,1
120 GOTO 90
130 DATA 140,7,140,7,140,7,15,255,16,16,16,190,7
