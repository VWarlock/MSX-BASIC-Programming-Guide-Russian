10 INPUT X$,K
20 IF K<1 OR K>LEN(X$) THEN PRINT"����� � ��������� ������� � ����� ���":END ELSE Z$=MID$(X$,K,1):PRINT Z$:END
