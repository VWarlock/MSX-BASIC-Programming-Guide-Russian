10 ' � � � � � � � �  ������� ("���� ����������")
20 SOUND0,252:SOUND1,0:SOUND8,16:SOUND11,200:SOUND 12,2:SOUND 13,10
80 SOUND 7,&B00111110
90 PRINT"������� ����� �������..."
100 A$=INPUT$(1)
110 '������ ���������:��������� ������� ��������� �������
120 SOUND 12,1
130 SOUND 0,RND(1)*255
140 GOTO 130
