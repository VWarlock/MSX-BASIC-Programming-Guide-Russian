10 DATA " ",".","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�"
15 DATA " ",".","-","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�"
20 INPUT"������� ���������� �������";S:DIM C$(S)
30 FOR I=1TOS:INPUT"������� ��������� �������";C$(I):NEXTI
40 GOSUB 190
50 DIM N(L1,S)
56 FOR I=1 TO S:RESTORE 10:FOR J=1 TO 33:READB$
57 IF B$=MID$(C$(I),1,1) THEN N(1,I)=J
58 NEXTJ
70 FOR K=2 TO LEN(C$(I))-4
71 IF MID$(C$(I),K-1,1)="-"THEN RESTORE 10 ELSE RESTORE 15
80 FOR J=1 TO 34
90 READ B$:IF B$=MID$(C$(I),K,1) THEN N(K,I)=J
100 NEXT J,K
101 FOR K=LEN(C$(I))-3 TO L1:RESTORE 10
103 FOR J=1 TO 33
105 READ B$:IF B$=MID$(C$(I),K,1) THEN N(K,I)=J
107 NEXT J,K
108 NEXT I
110 FOR K=1 TO L1
120 FOR I=1 TO S-1:FORJ=I+1 TO S
130 IF MID$(C$(I),1,K)=MID$(C$(J),1,K) THEN GOTO 140 ELSE IF(N(K,I)>N(K,J))AND(MID$(C$(I),1,K-1)=MID$(C$(J),1,K-1)) THEN SWAP C$(I),C$(J):FOR L=1 TO L1:SWAP N(L,I),N(L,J):NEXT L
140 NEXT J,I,K
150 CLS '������� ����� �������!
160 PRINT SPC(10);"�������� ������"
170 FOR I=1 TO S:PRINT SPC(10);STR$(I);". ";C$(I):NEXTI
180 END
190 L1=0:FOR P=1 TO S:IF LEN(C$(P))>L1THEN L1=LEN(C$(P))
200 NEXT:RETURN
