10 LPRINT CHR$(14):GOSUB 100      '����������� ������ ��������
20 LPRINT CHR$(27);"4":GOSUB 100  '"������" �������
30 LPRINT CHR$(15):GOSUB 100      '����������� ������ ���������
35 LPRINT CHR$(27);"5":GOSUB 100:END
100 LPRINT CHR$(27);"G":GOSUB 1000:LPRINT CHR$(27);"H"
110 LPRINT CHR$(27);"!":GOSUB 1000:LPRINT CHR$(27);CHR$(34)
120 END
1000 LPRINT "������ ��������� !!! ������ �����!":RETURN 
