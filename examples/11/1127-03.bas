10 SCREEN1,2
20 SPRITE$(1)="��������":SPRITE$(2)="���������":SPRITE$(3)="������":SPRITE$(4)="�������":SPRITE$(5)="� ������"
30 PUT SPRITE0,(10,80),,5:PUT SPRITE1,(20,80),,4:PUT SPRITE2,(30,80),,3:PUT SPRITE3,(40,80),,2
40 VDP(15+1)=0:Z=INP(&H99)
50 PRINT RIGHT$("00000000"+BIN$(Z),8)
55 A$=INPUT$(1)
60 PUT SPRITE4,(50,80),,1
70 VDP(15+1)=0:Z=INP(&H99)
80 PRINT RIGHT$("00000000"+BIN$(Z),8);"�W �������� 5-�� ������ � ������!"
