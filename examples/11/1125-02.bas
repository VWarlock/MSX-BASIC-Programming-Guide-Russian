10 COLOR 8,15,0:KEY OFF:SCREEN 1
20 FOR R=0 TO 7:FOR G=0 TO 7:FOR B=0 TO 7
30 OUT &H99,0:OUT &H99,16 OR &H80:OUT &H9A,16*R+B:OUT &H9A,G
40 LOCATE 10,10:PRINT"R="R:LOCATE 10,11:PRINT"G="G:LOCATE 10,12:PRINT"B="B
50 FOR T=1 TO 500:NEXT T:NEXT B,G,R
