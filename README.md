# COBOL Data Overflow Bug
This repository demonstrates a subtle data overflow bug in a COBOL program. The program involves two numeric variables, WS-AREA-1 and WS-AREA-2.  An unexpected behavior arises when WS-AREA-1 exceeds its defined size, impacting the calculation of WS-AREA-2.

## Bug Description
The program has a potential for data overflow in WS-AREA-1.  While the `ADD` operation seems straightforward, if WS-AREA-1 reaches its maximum value (99999) and the `ADD 1 TO WS-AREA-1` is executed, the value will wrap around to a negative number. This unintended behavior directly affects the conditional logic and the subsequent calculation of WS-AREA-2. 

## Solution
The solution involves explicitly handling the possibility of overflow.  This is done by checking the value of WS-AREA-1 before the addition and introducing error handling or alternative logic.
