5  '����� ���������: ������� ������ (9 �����), 02.01.90
10 WIDTH80:CLS:INPUT"������� ����� �����(����������� ��������� �� ������� ������� '������')";N:IF N/2=FIX(N/2) THEN DIM A(N):X=RND(-TIME) ELSE CLS:RUN 10
20       PRINT "� ����� �������� �������� ��������� ������:"
30       PRINT"WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW"
40   FOR I=1 TO N:A(I)=INT(100*RND(1)+1):PRINT A(I);:NEXT:R1=A(1)
50 PRINT:PRINT"WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW":H$=INPUT$(1)
60   FOR I=1 TO N-1 STEP 2
70       IF A(I)<A(I+1) THEN R=A(I):D=A(I+1) ELSE R=A(I+1):D=A(I)
80       G=G+1:PRINT"  ����,           "G"-�� ���E�������":PRINT
90       PRINT" ��� "I"-�� ������   -"A(I)" �������     "I+1"-�� ������-   "A(I+1)" ������� ":PRINT
100      PRINT" ����� ������� �� ���� �� ���������� ����� -"R1" �������":PRINT
110      G=G+1:IF R<R1 THEN R1=R
120      PRINT" ������� �� 2 ������ ��� ������ �����-"R"�������; ����� ��������� ���� ����� �������� ������ ����� "R1"�������":PRINT
125 PRINT "        ("G"-�� �����������)":PRINT
130      PRINT" ����� ������� �� ���� �� ���������� ����� -"D1" �������":PRINT
140      G=G+1:IF D>D1 THEN D1=D
150      PRINT" ������� �� 2 ������ ��� ������ �����-"D"�������; ����� ��������� ���� ����� �������� ������ ����� "D1" �������":PRINT
155 PRINT "        ("G"-OE �����������)":PRINT
160                    H$=INPUT$(1):GOSUB 200
170  C=C+3:NEXT I
180        PRINT:PRINT"����� ������ ��������: ("C" �����������) �� �����,��� ���������� ���:":PRINT D1"�������":PRINT
190        PRINT"  M���������� ���:"R1"�������":END
200 LOCATE 0,4:FOR F=1 TO 17:FOR J=1 TO 80:PRINT" ";:NEXT:NEXT:LOCATE 0,4:RETURN
