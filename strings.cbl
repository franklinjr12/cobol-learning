       IDENTIFICATION DIVISION.
       PROGRAM-ID. Strings.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 FIRST-NAME PIC X(20) VALUE "John".
       01 LAST-NAME PIC X(20) VALUE "Smith".
       01 FULL-NAME PIC X(20).
       01 STRING-POINTER PIC 99 VALUE 5.
       01 STR-COUNT PIC 99.

       PROCEDURE DIVISION.
           DISPLAY "Starting main program".
           *> copy
           MOVE FIRST-NAME TO FULL-NAME.
           DISPLAY FULL-NAME.
           *> concatenation
           STRING FIRST-NAME DELIMITED BY SPACE
               " " DELIMITED BY SIZE
               LAST-NAME DELIMITED BY SPACE
               INTO FULL-NAME.
           DISPLAY FULL-NAME.
           *> concatenation at position
           STRING FIRST-NAME DELIMITED BY SPACE *> stop at first space
               " " DELIMITED BY SIZE *> copy the full string
               LAST-NAME DELIMITED BY SPACE
               INTO FULL-NAME
               WITH POINTER STRING-POINTER.
           DISPLAY FULL-NAME.
           *> splitting
           MOVE "Smith John" TO FULL-NAME.
           UNSTRING FULL-NAME DELIMITED BY " "
               INTO FIRST-NAME, LAST-NAME.
           DISPLAY FIRST-NAME LAST-NAME.
           *> find if string contains substring
           INSPECT FULL-NAME TALLYING STR-COUNT FOR ALL "John".
           IF STR-COUNT > 0 THEN
               DISPLAY "Name contains John"
           ELSE
               DISPLAY "Name does not contains John"
           END-IF.
           *> replace string
           INSPECT FULL-NAME REPLACING ALL "John" BY "Carl".
           DISPLAY FULL-NAME.
           *> size of string
           COMPUTE STR-COUNT = FUNCTION LENGTH(FULL-NAME).
           DISPLAY "Size of string " STR-COUNT.
           DISPLAY "Ending main program".
           STOP RUN.
