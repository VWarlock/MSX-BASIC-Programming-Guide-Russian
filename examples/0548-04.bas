2  DIM G(2000) '��������� ���������� ������������!
4    DEFFNZ(X,Y)=(60^(2/3)-(X^2+Y^2)^(1/3))^(3/2)         'L=0
5   'DEFFNZ(X,Y)=SQR(20^2-(SQR(X^2+Y^2)-35)^2)            'L=0
6   'DEFFNZ(X,Y)=10*COS(.24*SQR(X^2+Y^2))                 'L=0
7   'DEFFNZ(X,Y)=COS(.1*X)*COS(.1*Y)*10                   'L=0
8   'DEFFNZ(X,Y)=25*COS(2.5E-03*X*Y)               'L=0.6, L=0 
9   'DEFFNZ(X,Y)=75*EXP(-SQR(X^2+Y^2)^2/600)              'L=0
10  'DEFFNZ(X,Y)=64E-05*X*Y*(X*X-Y*Y)/SQR(X^2+Y^2)'L=1.4, 'L=2
12  'DEFFNZ(X,Y)=SIN(SQR(X^2+Y^2)/5)/SQR(X^2+Y^2)*175     'L=0
13  'DEFFNZ(X,Y)=30*COS(X*.05*EXP(-Y*.01))        'L=.785, L=0
14  'DEFFNZ(X,Y)=(X^2-Y^2)/45                     'L=.785, L=0
15  'DEFFNZ(X,Y)=20*COS((X+Y)/LOG(X^2+Y^4+.5))    'L=.785, L=0
16  'DEFFNZ(X,Y)=30*COS((X+Y)/LOG(X^2+Y^2+.5))    'L=.785, L=0
17  'DEFFNZ(X,Y)=10*SIN(.1*(ABS(X)+ABS(Y)))               'L=0
18 INPUT"���� ��������";L!:N!=COS(L!):M!=SIN(L!)
19 DEFFNF(X,Y)=FNZ(X*N!-Y*M!,X*M!+Y*N!)
20 COLOR1,15,1:SCREEN2:A=SQR(2)
30 FOR T=-90*A TO 90*A STEP A:W=-100:V=100:C=0:FOR I=-60 TO 60 STEP 6:J=I-T
35 IF J>60 OR J<-60 THEN 70
37 'IF20^2<(SQR(I^2+J^2)-35)^2THEN 70       '������ ��� ������ 5!
40 'IF I=0 AND J=0 THEN 70             '������ ��� ����� 10 � 12!
43  IF (I^2+J^2)^(1/3)>60^(2/3)THEN70       '������ ��� ������ 4!
49 Y1%=INT(.70634*(I+J)+FNF(I,J)+.5)
50 IFY1%>W THEN W=Y1%:C=C+1:IF C=1 THENG(INT(T)+220)=W:V=W:GOTO 60 ELSE 60
55 IF Y1%<V THEN V=Y1% ELSE 70
60 PSET(INT(120+.70634*(I-J)+.5),94-Y1%)
70 NEXTI,T
80 FOR T=-90*A TO 90*A STEP A:W=G(INT(T)+220)
81 FOR J=-60 TO 60 STEP 6:I=J+T
83 IF J=-60 THEN W=-100 ELSE W=G(INT(T)+220)
85 IF I>60 OR I<-60 THEN 120
90 'IF20^2<(SQR(I^2+J^2)-35)^2THEN120       '������ ��� ������ 5!
91 'IF I=0ANDJ=0 THEN 120              '������ ��� ����� 10 � 12!
93  IF(I^2+J^2)^(1/3)>60^(2/3)THEN120       '������ ��� ������ 4!
99 Y1%=INT(.70634*(I+J)+FNF(I,J)+.5)
100 IF Y1%>W THEN G(INT(T)+220)=Y1% ELSE 120
110 PSET(INT(120+.70634*(I-J)+.5),94-Y1%)
120 NEXTJ,T
150 GOSUB 55020 'WW� ����� ������������ HARDCOPY.BAS
160 A=USR(0)    'WW�
200 END
55010 '������������ HARDCOPY.BAS
55020 DT=&HEF00:DEFUSR=DT:RESTORE 55060
55030 FOR I=0 TO &HAB
55040 READ DT$:POKE DT+I,VAL("&H"+DT$)
55050 NEXT:RETURN 'WW�
55060 DATA 21,00,20,22,AC,EF,21,91,EF,CD,87
55070 DATA EF,21,9B,EF,CD,87,EF,0E,08,2A,AC
55080 DATA EF,CD,4A,00,57,E6,0F,5F,CB,3A,CB,3A
55090 DATA CB,3A,CB,3A,00,3E,0F,BA,20,0D,BB
55100 DATA 20,03,AF,18,11,CD,7F,EF,EE,FF,18
55110 DATA 0A,BB,28,04,3E,FF,18,03,CD,7F,EF,23
55120 DATA 22,AC,EF,06,08,21,AE,EF,CB,27,CB
55130 DATA 1E,23,10,F9,0D,20,BE,06,08,21,AE
55140 DATA EF,7E,CD,A5,00,23,10,F9,2A,AC,EF,AF
55150 DATA BD,20,A9,3E,0D,CD,A5,00,3E,0A,CD
55160 DATA A5,00,3E,38,BC,20,94,21,A2,EF,CD
55170 DATA 87,EF,C9,CB,AC,CD,4A,00,CB,EC,C9,7E
55180 DATA FE,FF,C8,CD,A5,00,23,18,F6,1B,54,31
55190 DATA 36,1B,45,1B,3E,0E,FF,1B,53,30,32,35
55200 DATA 36,FF,1B,4E,0F,1B,41,1B,3C,0D,0A,FF
