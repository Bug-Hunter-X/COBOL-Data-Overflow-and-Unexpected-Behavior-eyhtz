01  WS-AREA-1 PIC 9(5) VALUE 0. 
01  WS-AREA-2 PIC 9(5) VALUE 0. 
01  WS-OVERFLOW-FLAG PIC 9 VALUE 0. 

PROCEDURE DIVISION. 
    IF WS-AREA-1 < 99999 THEN
       ADD 1 TO WS-AREA-1 
    ELSE
       MOVE 1 TO WS-OVERFLOW-FLAG
    END-IF
    IF WS-AREA-1 > 100 THEN 
       MOVE 0 TO WS-AREA-1 
       SUBTRACT 10 FROM WS-AREA-2 
    ELSE 
       ADD 5 TO WS-AREA-2 
    END-IF. 
    DISPLAY WS-AREA-1 WS-AREA-2 WS-OVERFLOW-FLAG. 
    STOP RUN.