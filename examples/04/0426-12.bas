10 CLEAR 1500
20 INPUT"������� ���������� ����";N:PRINT"������� �����!"
27 '� ������� 30-60 ������������� ��������� ������� C$(N).
30 DIM C$(N):FOR I=1 TO N:INPUTC$(I):NEXT:K$=""
75 '� ������� 80-130 ��������� "�����" �������. �������� ���������� �$ ������� �� "�����" ��������.
80 FOR I=1 TO N:FOR J=1 TO LEN(C$(I)):FOR R=1 TO N
110 FOR K=1 TO LEN(C$(R))
120 IF MID$(C$(I),J,1)=MID$(C$(R),K,1) THEN NEXT R:K$=K$+MID$(C$(I),J,1):NEXT J ELSE NEXT K,J
130 NEXT I
135 '� ������� 140-180 ����������"������������"�� ���� ������� "�����" ��������.
140 FOR I=1 TO N:FOR J=1 TO LEN(C$(I)):FOR K=1 TO LEN(K$)
170 IF MID$(C$(I),J,1)=MID$(K$,K,1)THENMID$(C$(I),J,1)=" "
180 NEXT K,J,I
185 '������ 190-230 ��������� "������" ���� ������� C$(N),�.�.��� "������������" "�����" �������� ���������� �������.
190 DIM N$(N)
200 FOR I=1 TO N:FOR J=1 TO LEN(C$(I))
220 IF MID$(C$(I),J,1)<>" "THENN$(I)=N$(I)+MID$(C$(I),J,1)
230 NEXT J,I
240 FOR I=1TO N:PRINT"���";I;"�����:" ;N$(I);"   - �� ������ ��?":NEXT
