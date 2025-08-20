       IDENTIFICATION DIVISION.
       PROGRAM-ID. SampleProgram.
       *> This is the mandatory first division of any COBOL program.
       *> It provides metadata: PROGRAM-ID gives the program a name.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       *> This division specifies the runtime environment.
       *> FILE-CONTROL is used for file I/O setup (none used here).
       *> If you’re not doing file operations, this can be mostly empty.

       DATA DIVISION.
       *> This is where all data (variables, file records, constants) are declared.

       FILE SECTION.
       *> Used only when working with files. We're not using files here,
       *> so this is just a placeholder.

       WORKING-STORAGE SECTION.
       *> This section holds persistent variables that exist for the entire runtime.
       *> Think of it like global variables in other languages.

       01 WS-COUNTER            PIC 9(02) VALUE 0.
       *> A 2-digit integer counter initialized to 0.

       01 WS-LIMIT              PIC 9(02) VALUE 5.
       *> The limit for a loop – also a 2-digit integer.

       01 WS-NAME               PIC A(20) VALUE "COBOL Learner".
       *> An alphanumeric string (A means letters only) of 20 characters.

       01 WS-RESULT             PIC 9(04) VALUE 0.
       *> A 4-digit number for storing computed values (if needed).

       01 WS-MESSAGE            PIC X(50).
       *> A general-purpose 50-character string (X = alphanumeric).

       01 WS-FLAG               PIC X VALUE SPACE.
       *> A one-character flag variable.
       88 FLAG-YES              VALUE 'Y'.
       88 FLAG-NO               VALUE 'N'.
       *> The level-88 entries define named conditions (like enum flags).
       *> If WS-FLAG = 'Y', then condition FLAG-YES is true.

       PROCEDURE DIVISION.
       *> This is where the actual code (logic) goes.
       *> Think of it like the `main()` function in C-style languages.

       MAIN-LOGIC.
           DISPLAY "=== COBOL Program Start ===".
           *> Outputs a simple message to the terminal.

           PERFORM SHOW-NAME.
           *> Executes a separate paragraph (think function or label).

           PERFORM LOOP-UNTIL-LIMIT.
           *> Loops until WS-COUNTER >= WS-LIMIT.

           PERFORM TEST-CONDITION.
           *> Demonstrates a simple conditional logic.

           PERFORM CALL-SUBPROGRAM.
           *> Executes a flag check using the 88-level condition.

           DISPLAY "=== Program End ===".
           *> Another message to show end of the program.

           STOP RUN.
           *> Terminates the program cleanly.

       SHOW-NAME.
           DISPLAY "Hello, " WS-NAME.
           *> Outputs the value of WS-NAME to the screen.

       LOOP-UNTIL-LIMIT.
           PERFORM UNTIL WS-COUNTER >= WS-LIMIT
               ADD 1 TO WS-COUNTER
               DISPLAY "Counter: " WS-COUNTER
           END-PERFORM.
           *> Demonstrates COBOL’s structured loop syntax.
           *> There’s no ++, so we use `ADD`.

       TEST-CONDITION.
           IF WS-COUNTER = WS-LIMIT THEN
               MOVE "Reached the limit." TO WS-MESSAGE
           ELSE
               MOVE "Did not reach the limit." TO WS-MESSAGE
           END-IF
           DISPLAY WS-MESSAGE.
           *> Shows use of IF/ELSE and how strings are assigned with MOVE.

       CALL-SUBPROGRAM.
           MOVE 'Y' TO WS-FLAG
           IF FLAG-YES
               DISPLAY "FLAG is YES"
           ELSE
               DISPLAY "FLAG is not YES"
           END-IF.
           *> Demonstrates use of a condition name (level 88).
           *> More readable than checking WS-FLAG directly.

       UNRECHEABLE-SUBPROGRAM.
           DISPLAY "This should not appear".
