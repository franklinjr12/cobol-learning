      * main program which calls SubProgramUsage passing a param
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SubProgramUsage.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SEND-PARAM     PIC X(10) VALUE "ABC".

       PROCEDURE DIVISION.
           DISPLAY "Starting main program"
           CALL 'SubProgramUsage2' USING SEND-PARAM.
           DISPLAY "Current value " SEND-PARAM
           DISPLAY "Ending main program"
           STOP RUN.
      * end main program
