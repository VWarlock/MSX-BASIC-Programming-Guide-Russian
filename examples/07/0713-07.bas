10 DATA 3E,0F      :' LD   A,0Fh        ; ������������, �����������
20 DATA 1E,83      :' ld   E,83h        ; ��������� ����������
30 DATA CD,93,00   :' CALL 0093h        ; �������� PSG � ������� 14,
40 DATA 3E,0E      :' LD   A,0Eh        ; ��� �����������
50 DATA CD,96,00   :' CALL 0096h        ; ��������� ��������� 1.
60 DATA 32,00,E0   :' LD   (E000h),A    ;
70 DATA C9         :' RET
80 FOR I=0 TO 15:READ A$:POKE &HD000+I,VAL("&h"+A$):NEXT I
90 DEFUSR=&HD000
100 SCREEN 2,0
110 SPRITE$(0)="��������"               ' ����� �������
120 X=128:Y=96                          ' ��������� ���������� �������
140 PUT SPRITE 0,(X,Y),15,0
150 A=USR(0)                            ' ���������� ���������
160 A=PEEK(&HE000) AND 15               ' ��������� 1
170 IF A=10 OR A=14 OR A=6 THEN Y=Y-2   ' ��������� ���������
180 IF A=9  OR A=13 OR A=5 THEN Y=Y+2
190 IF A=10 OR A=11 OR A=9 THEN X=X-2
200 IF A=6  OR A=7  OR A=5 THEN X=X+2
210 GOTO 140
