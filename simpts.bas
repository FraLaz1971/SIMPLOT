10  REM CREATE POINTS
90  REM READ LINE NUMBER TO PUT DATA
100 READ LN
110 READ NPTS
120 READ AC
180 REM DEFINE THE FUNCTION TO PLOT
190 DEF FNF1(A) = A*A*A
195 REM PRINT THE DATA IN ASCII FILE SOURCE FORMAT
200 OPEN "POINTS.BAS" FOR OUTPUT AS #3
210 PRINT #3, LN; " DATA ";NPTS
220 FOR I = 1 TO NPTS/10
225     PRINT #3, LN+I*10; " DATA";
230     FOR J = 1 TO 9
240         PRINT #3, AC*(10*(I-1)+J);",";FNF1(AC*(10*(I-1)+J));",";
250     NEXT J
255     PRINT #3, AC*(10*(I-1)+J);",";FNF1(AC*(10*(I-1)+J));
260     PRINT #3, " "
270     LN = LN+I*10
290 NEXT I
300 PRINT #3, LN+I*10; " DATA 0,100,5"
310 I = I + 1
320 PRINT #3, LN+I*10; " DATA 0,1000000,5"
330 CLOSE #3
1000 DATA 21000
1020 DATA 100
1030 DATA 1