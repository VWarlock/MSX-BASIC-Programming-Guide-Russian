10 OPEN "TEST.DAT" FOR OUTPUT AS #1
20 PRINT#1,CHR$(34);"�������, ���������";CHR$(34):CLOSE#1
40 OPEN "TEST.DAT" FOR INPUT AS#1
50 INPUT#1,A$:PRINT"������ �������� � �����:";A$:CLOSE#1
