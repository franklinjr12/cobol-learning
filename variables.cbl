       identification division.
       program-id. variables.
       data division.
       WORKING-STORAGE section.
       1 var1 pic s9(2).
       1 var2 pic s9(2) value 10.
       1 var3 pic a(3) value 'abc'.
       1 var4 pic x(4) value 'a1b2'.
       1 groupvar.
        2 subvar1 pic 9(2) value 11.
        2 subvar2 pic 9(2) value 12.
       1 structlike.
        5 firstattr pic 9(10).
        5 secondattr pic x(10).
        5 thirdattr pic 9(2).
       procedure division.
           display "var1: "var1.
           display "var2: "var2.
           display "var3: "var3.
           display "var4: "var4.
           display "groupvar: "groupvar.
           display "structlike: "structlike.
           move 1 to FIRSTATTR
           move "123" to SECONDATTR
           move 99 to thirdATTR
           display "structlike: "structlike.
           *> the following would fail due to type
           *> add 1 to secondattr
           add 1 to thirdattr
           display "structlike: "structlike.
           stop run.
