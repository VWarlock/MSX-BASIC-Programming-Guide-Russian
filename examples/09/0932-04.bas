10 CLEAR 1000:MAXFILES=2:OPEN "������" FOR OUTPUT AS#2
30 A$="FLOPPY DISK":E=45:F=54.8
50 PRINT #2,A$;",";         '�WW ��������� ������ ";" !
60 PRINT #2,E;",";F         '�WW ��������� ������ "������" !
70 CLOSE #2
