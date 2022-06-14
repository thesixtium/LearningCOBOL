      ******************************************************************
      * Author: Aleksander
      * Purpose: Learn cobol
      * Tectonics: cobc
      ******************************************************************
      >>SOURCE FORMAT FREE

       IDENTIFICATION DIVISION. *> information about the program
       PROGRAM-ID. coboltut.

       DATA DIVISION.
       FILE SECTION. *> Data sent and recieved from storage
       WORKING-STORAGE SECTION. *> Variables inside of program
       01 UserName PIC X(30) VALUE "You".
           *> Defines alphanumeric UserName of max length 30
           *> Default value of "You"
       01 Num1 PIC 9 VALUE ZEROS.
           *> Define numeric Num1 with range 0-9
       01 Num2 PIC 9 VALUE ZEROS.
           *> Define numeric Num2 with range 0-9
       01 Total PIC 99 VALUE 0.
           *> Define numeric Total with range 0-99
       01 SSNum.
           02 SSArea   PIC 999.
           02 SSGroup  PIC 99.
           02 SSSerial PIC 9999.
           *> Define composite variable with 3 numerics
       01 PIValue CONSTANT AS 3.14.
       *> ZEROS ZERO 0
       *> SPACE SPACES
       *> HIGH-VALUES HIGH-VALUE
       *> LOW_VALUES LOW-VALUE

       PROCEDURE DIVISION.
       DISPLAY "What is your name ".
       ACCEPT UserName.
       DISPLAY "Hello " UserName.

       MOVE ZERO TO UserName.
       DISPLAY UserName.

       DISPLAY "Enter 2 values to sum "
       ACCEPT Num1
       ACCEPT Num2
       COMPUTE Total = Num1 + Num2
       DISPLAY Num1 " + " Num2 " = " Total
       DISPLAY "Enter your SSN"
       ACCEPT SSNum
       DISPLAY "Area " SSArea

       STOP RUN.
