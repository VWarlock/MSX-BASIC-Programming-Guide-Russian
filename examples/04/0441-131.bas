100 INPUT "������ ��� ������:";FS$ 
109 '�������� �������� �� FS$.
110 S$=FS$:RMV$=" ":GOSUB 200 
130 PRINT S$:END
140 'OOOO ����������� ������������ ������ �����. OOOO
150 '� RMV$ - ��������� ������� 
160 '� S$ - �������� ������ � ��������� 
200 IF INSTR(1,S$,RMV$)<>0 THEN S$=LEFT$(S$,INSTR(1,S$,RMV$)-1)+RIGHT$(S$,LEN(S$)-INSTR(1,S$,RMV$)):GOSUB 200 
210 RETURN
