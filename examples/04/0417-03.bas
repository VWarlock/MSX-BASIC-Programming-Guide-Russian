10 PRINT"���� ����� ����� ���� �������� �����!"
20 INPUT "������ �����, ������ �����";N1$,N2$
40 ANS=VAL("&B"+N1$)+VAL("&B"+N2$)
50 BN$=RIGHT$(STRING$(16,"0")+BIN$(ANS),16)'��.�������� � �. 1.9!
60 PRINT"������� ��������:";BN$;" ���";ANS;"����������"
