10 INPUT "������� ����� �% (�� ����� 4 ����������������� ����)";A%
20 IF A%<0 THEN H%=A%\256-1 ELSE H%=A%\256
25 L%=A%MOD256
30 PRINT RIGHT$("00"+HEX$(H%),2);" ";RIGHT$("00"+HEX$(L%),2)
