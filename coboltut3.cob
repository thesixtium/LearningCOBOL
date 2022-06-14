      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           CLASS PassingScore IS "A" THRU "C", "D".

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Age PIC 9(2) VALUE 0.
       01 Grade PIC 9(2) VALUE 0.
       01 Score PIC X(1) VALUE "B".
       01 CanVoteFlag PIC 9 VALUE 0.
           88 CanVote VALUE 1.
           88 CantVote VALUE 0.
       01 TestNumber PIC X(1).
           88 IsPrime VALUE "1", "3", "5", "7".
           88 IsOdd VALUE "1", "3", "5", "7", "9".
           88 IsEven VALUE "2", "4", "6", "8".
           88 LessThan5 VALUE "1" THRU "4".
           88 ANumber VALUE "0" THRU "9".
       PROCEDURE DIVISION.
       DISPLAY "Enter Age: "
       ACCEPT Age
       IF Age >= 18 THEN
           DISPLAY "You can vote"
       ELSE
           DISPLAY "You can't vote"
       END-IF

       IF Age LESS THAN 5 THEN
           DISPLAY "Stay Home"
       END-IF

       IF Age = 5 THEN
           DISPLAY "Go to Kindergarten"
       END-IF

       IF AGE > 5 AND Age < 18 THEN
           COMPUTE Grade = Age - 5
           DISPLAY "Go to grade " Grade
       END-IF

       IF Age >= 18
           DISPLAY "Go to College"
       END-IF

       *> Avoid else if statement

       STOP RUN.
