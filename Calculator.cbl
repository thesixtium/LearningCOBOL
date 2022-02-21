      ******************************************************************
      * Author: Aleksander Berezowski
      * Start Date: 2022-01-20
      * Purpose: Learn COBOL
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULATOR.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 CalcsRequired PIC 9(2).
           77 FirstNumber PIC 9(2).
           77 Operator PIC A(1).
           77 SecondNumber PIC 9(2).
           77 Result PIC 9(4).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MAIN.
               DISPLAY "Enter the number of calcs required:"
               ACCEPT CalcsRequired.
               DISPLAY "CalcsRequired: ",CalcsRequired.
               PERFORM CALCULATIONS CalcsRequired TIMES.
               STOP RUN.

            CALCULATIONS.
               DISPLAY "Enter the first number:"
               ACCEPT FirstNumber.
               DISPLAY "Enter operator (+ or *):"
               ACCEPT Operator.
               DISPLAY "Enter the second number:"
               ACCEPT SecondNumber.
               IF Operator = "+" THEN
                   COMPUTE Result = FirstNumber + SecondNumber
               ELSE
                   COMPUTE Result = FirstNumber * SecondNumber
               END-IF
               DISPLAY "Result is: ", Result.

       END PROGRAM CALCULATOR.
