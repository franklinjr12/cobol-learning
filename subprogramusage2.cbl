      * sub program called by SubProgramUsage which receives a param
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SubProgramUsage2.

       DATA DIVISION.
       LINKAGE SECTION.
       01 RECV-PARAM     PIC X(10).

       PROCEDURE DIVISION USING RECV-PARAM.
           DISPLAY "Subprogram received: " RECV-PARAM
           MOVE "CBA" TO RECV-PARAM
           EXIT PROGRAM.
      * end sub program
