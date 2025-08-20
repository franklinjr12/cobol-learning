       IDENTIFICATION DIVISION.
       PROGRAM-ID. PerformProgram.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       1 WS-COUNTER PIC 9(1).
       1 WS-MESSAGE PIC A(20).
       1 WS-WORKING PIC 9(1) VALUE 1.
           88 WS-WORKING-Y VALUE 1.
           88 WS-WORKING-N VALUE 0.
       PROCEDURE DIVISION.
           DISPLAY "Start program".
           DISPLAY "Running main"
           PERFORM MAIN.
           DISPLAY "Finished main"
           DISPLAY "Running alternative"
           PERFORM ALTERNATIVE.
           DISPLAY "Finished alternative"
           DISPLAY "End program".
           STOP RUN.

       CHECK-COUNTER.
           IF WS-COUNTER = 9 OR WS-COUNTER > 9 THEN
               MOVE "Greater or equal to 9" TO WS-MESSAGE
               MOVE 0 TO WS-WORKING
           ELSE
               MOVE "Less than 9" TO WS-MESSAGE
           END-IF.

       INCREMENT-COUNTER.
           ADD 1 TO WS-COUNTER.
       
       MAIN.
           PERFORM CHECK-COUNTER.
           DISPLAY "Counter is " WS-COUNTER ". Message " WS-MESSAGE.
           IF WS-WORKING-Y
               PERFORM INCREMENT-COUNTER
               PERFORM MAIN
           END-IF.

       ALTERNATIVE.
           MOVE 0 TO WS-COUNTER.
           MOVE 1 TO WS-WORKING.
           PERFORM UNTIL WS-WORKING-N
               PERFORM CHECK-COUNTER
               DISPLAY "Counter is " WS-COUNTER ". Message " WS-MESSAGE
               PERFORM INCREMENT-COUNTER
           END-PERFORM.
           DISPLAY "Counter is " WS-COUNTER ". Message " WS-MESSAGE.
