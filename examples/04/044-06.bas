10 INPUT A:U=A+A^2:GOSUB 100:PRINT Z:END
100 '������������ ���������� VxV: �������� U,��������� Z
110 IF U>=0 THEN Z=U:RETURN ELSE Z=-U:RETURN
