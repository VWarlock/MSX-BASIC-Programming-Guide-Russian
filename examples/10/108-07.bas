1 CLEAR
2 PRINT HEX$(PEEK(&HF69C)); HEX$(PEEK(&HF69B))
3 A$="�����":B$="�������"
4 FOR T=0 TO LEN(A$)+LEN(B$):PRINT CHR$(PEEK(&HF168-T));:NEXT
5 SWAP A$,B$
6 FOR T=0 TO LEN(A$)+LEN(B$):PRINT CHR$(PEEK(&HF168-T));:NEXT
