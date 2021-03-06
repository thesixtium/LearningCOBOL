      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 SampleData PIC X(10) VALUE "Stuff".
       01 JustLetters PIC A(3) VALUE "ABC".
       01 JustNums PIC 9(4) VALUE 1234.
       01 SignedInt PIC S9(4) VALUE -1234.
       01 PayCheck PIC 9(4)V9(2) VALUE ZEROS.
       01 Customer.
           02 Ident PIC 9(3).
           02 CustName PIC X(20).
           02 DateOfBirth.
               03 MOB PIC 9(2).
               03 DOB PIC 9(2).
               03 YOB PIC 9(4).
       01 Num1 PIC 9 VALUE 5.
       01 Num2 PIC 9 VALUE 5.
       01 Num3 PIC 9 VALUE 5.
       01 Ans PIC S9(2)V9(2) VALUE 0.
       01 Rem PIC 9V9(2).

       PROCEDURE DIVISION.
       MOVE "More Stuff" TO SampleData
       MOVE "123" TO SampleData
       MOVE 123 TO SampleData
       DISPLAY SampleData
       DISPLAY PayCheck
       MOVE "123Bob Smith           12211974" TO Customer
       DISPLAY CustName
       DISPLAY MOB "/" DOB "/" YOB

       MOVE ZERO TO SampleData
       DISPLAY SampleData
       MOVE SPACE TO SampleData
       DISPLAY SampleData
       MOVE HIGH-VALUE TO SampleData
       DISPLAY SampleData
       MOVE LOW-VALUE TO SampleData
       DISPLAY SampleData
       MOVE QUOTE TO SampleData
       DISPLAY SampleData
       MOVE ALL "3" TO SampleData
       DISPLAY SampleData

       ADD Num1 TO Num2 GIVING Ans
       DISPLAY Ans
       ADD Num1, Num2, Num3 GIVING Ans
       DISPLAY Ans
       SUBTRACT Num1 FROM Num2 GIVING Ans
       DISPLAY Ans
       MULTIPLY Num1 BY Num2 GIVING Ans
       DISPLAY Ans
       DIVIDE Num1 BY Num2 GIVING Ans
       DISPLAY Ans
       DIVIDE Num1 BY Num2 GIVING Ans REMAINDER Rem
       DISPLAY Ans
       COMPUTE Ans = Num1 + Num2
       DISPLAY Ans

       STOP RUN.
