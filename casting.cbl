       IDENTIFICATION DIVISION.
       PROGRAM-ID. Casting.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NUMBER        PIC 9(4) VALUE 1234.
       01 WS-TEXT-NUM      PIC X(4).
       01 WS-FMT-DISPLAY   PIC $ZZZ9.
       01 WS-DECIMAL-NUMBER PIC 9(4)V99.

       PROCEDURE DIVISION.
           DISPLAY "Starting main program".
           *> casting number to text
           MOVE WS-NUMBER TO WS-TEXT-NUM.
           DISPLAY "Text num: " WS-TEXT-NUM.
           *> casting number to text formated
           MOVE 9 TO WS-NUMBER.
           MOVE WS-NUMBER TO WS-FMT-DISPLAY.
           DISPLAY "Text num: " WS-FMT-DISPLAY.
           *> casting text to number
           MOVE "4321" TO WS-TEXT-NUM.
           IF WS-TEXT-NUM IS NUMERIC THEN
               MOVE WS-TEXT-NUM TO WS-NUMBER
               DISPLAY WS-NUMBER
           ELSE
               DISPLAY "Not valid number"
           END-IF.
           *> casting number to number with decimals
           MOVE WS-NUMBER TO WS-DECIMAL-NUMBER.
           DISPLAY WS-DECIMAL-NUMBER.
           COMPUTE WS-DECIMAL-NUMBER = WS-DECIMAL-NUMBER / 2.
           DISPLAY WS-DECIMAL-NUMBER.
           DISPLAY "Ending main program".
           STOP RUN.
