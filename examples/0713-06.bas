10 DATA 3E,0F     :' LD   A,0Fh      ; � 15-� ������� PSG ��������
20 DATA 1�,03     :' LD   �,03h      ; 3 (��� ��������� 1)
30 DATA CD,93,00  :' CALL 0093h      ; BIOS ������ (�������� SOUND ��
35 '                                 ; ���������!)
40 DATA 3E,0E     :' LD   A,0Eh      ; ������ ���������� �������� 14
50 DATA CD,96,00  :' CALL 0096h      ; BIOS ������
60 DATA 32,00,E0  :' LD   (E000h),A  ; ���������� ����� �������� �
65 '                                 ; ������ � ������� &HE000
70 DATA C9        :' RET
80 FOR I=0 TO 15:READ A$:POKE &HD000+I,VAL("&H"+A$):NEXT I
90 DEFUSR=&HD000
100 A=USR(0)                         ' ��������� ��������� ��������� 1
110 PRINT RIGHT$("0"+BIN$(NOT(PEEK(&HE000) AND 15)),4)
