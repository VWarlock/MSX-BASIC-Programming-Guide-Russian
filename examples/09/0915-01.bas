1 '���� ��������������� ����� "MMF"
2 COLOR 1,7,13:SCREEN 1:PRINT:PRINT TAB(7)"�������� ����"
4 PRINT TAB(6)"WWWWWWWWWWWWWWW":PRINT
6 PRINT"1. ��������� A - 1":PRINT"2. ��������� B - 2"
8 PRINT"3. ��������� � - 3":PRINT"4. ��������� � - 4"
11 INPUT R:IF R<1 OR R>4 THEN 11
13 ON R GOTO 14,15,16,17
14 RUN"����.�",R
15 RUN"����.�",R
16 RUN"����.�",R
17 RUN"����.�",R
