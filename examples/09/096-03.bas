1 WIDTH40:PRINT"<<<  FORMAT FILES ON CASSETTE  >>>":PRINT:KEYOFF:PRINT"<<<  BY LEO BOYARSKY (c) 1988  >>>":POKE&H80CA,143'
2 CLEAR 1000:MAX FILES=1:ON STOP GOSUB15:STOP ON:ON ERROR GOTO 14:RESTORE 4:A=VARPTR(#1):NEW'
3 DEFFNA$(I)=RIGHT$("000"+HEX$(PEEK(I)+256*PEEK(I+1)),4)
4 FORI=0TO8:READX:POKEA+I,X:NEXT:DATA1,0,0,0,255,0,0,0,0'
5 DATA&HDB,&HC3,&H32,&H58,&HD3,&HC3,&H74,&H42
6 PRINT:X$=INPUT$(255,1)
7 W$="":FORI=A+9 TOA+18:W=PEEK(I):W$=W$+CHR$(W):NEXT
8 N$="":FORI=A+19TOA+24:N=PEEK(I):N$=N$+CHR$(N):NEXT
9 IFW$="����������"THENW$="BASIC  (cload)":GOSUB11ELSEIFW$="����������"THENW$="BASIC  ( load)":GOSUB11ELSEIFW$="����������"THENW$="OBJEKT (bload)":GOSUB11:I=A+25:GOSUB12
10 PRINT:PRINT"<<<  Checking next file        >>>":RUN2
11 S$=" The "+N$+" is "+W$+" file.":PRINTS$:RETURN
12 SA$=FNA$(I):IFNOT(("8"<=SA$)AND(SA$<="F380"))THEN13ELSEEA$=FNA$(I+2):IFNOT(("8"<=EA$)AND(EA$<="F380"))THEN13ELSERA$=FNA$(I+4):IF NOT(("8"<=RA$)AND(RA$<="F380"))THEN13ELSES$=S$+CHR$(13)+"Start: &h"+SA$+"; End: &h"+EA$+"; Run: &h"+RA$:PRINTS$:RETURN
13 I=I+1:IFI>A+255THENPRINT:PRINT"Don't check address !":RETURN ELSE 12
14 RESUME NEXT
15 KEYON:POKE&H80CA,58'
16 END
