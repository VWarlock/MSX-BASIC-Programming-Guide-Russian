10 '� � � � �: �������� �.�.
20 COLOR 15,1,1:SCREEN 1,3:KEY OFF:WIDTH 32:VDP(1)=VDP(1)XOR64
30 SPRITE$(0)=STRING$(8,255):FC=2 '���� ������ ����� ���������!
40 DATA 8142241818244281,4224181824428181,2418182442818142,1818244281814224,1824428181422418,2442818142241818,4281814224181824,8181422418182442 '������ ��� ������������ �������� ����������� ���� ("�����-����")
50 DATA 0142241010244201,4224101024420101,2410102442010142,1010244201014224,1024420101422410,2442010142241010,4201014224101024,0101422410102442 '������ ��� ������������ �������� ����������� ����("������-�����")
60 FOR I=33 TO 48:READ A$:FOR T=2 TO 16 STEP 2        '������������
70 VPOKE 8*I+T/2-1,VAL("&H"+MID$(A$,T-1,2)):NEXT:NEXT ' ��������
80 W$=STRING$(32,CHR$(255))
90 FOR Y=0 TO 22:PRINT W$; '���������� ������ �������� W$
100 NEXT:LOCATE 0,22:FOR I=33 TO 40
110 J$(1)=J$(1)+CHR$(I):NEXT:FOR I=41 TO 40:J$(2)=J$(2)+CHR$(I):NEXT
120 FOR I=48 TO 41 STEP 1:J$(4)=J$(4)+CHR$(I):NEXT
130 FOR I=40 TO 33 STEP 1:J$(3)=J$(3)+CHR$(I):NEXT
140 LOCATE0,22:PRINT SPACE$(32)
150 LOCATE0,22:PRINTJ$(1)
160 PUT SPRITE 9,(100,63),1,0
170 FOR Q=0 TO 64 STEP 16:M=M+1 ' �������� "����", �����������
180 PUT SPRITE M,(Q,175),1,0    '        �� ������
190 NEXT:VDP(1)=VDP(1) XOR 64   ' ��������� ������
200 FOR I=0 TO 7:LOCATE I,22,1
210 NEXT:YW=YW+1
220 IF YW=20 THEN LOCATE 0,22:PRINT J$(FC):FC=FC+1:YW=0 '������ "����"
230 IF FC=5 THEN FC=1
240 GOTO 200
