      ******************************************************************
      * Author: Aleksander Berezowski
      * Start Date: 2022-01-21
      * Purpose: Learn how to write files in COBOL
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. READING-FILES.

       ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
               FILE-CONTROL.
               SELECT STUDENT ASSIGN TO "C:/Users/Sixtium/Documents/Lear
      -            "ning/COBOL/ReadingFiles.txt"
               ORGANIZATION IS LINE SEQUENTIAL.
               SELECT SCHOOL ASSIGN TO "C:/Users/Sixtium/Documents/Learn
      -            "ing/COBOL/WritingFiles.txt"
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
           FILE SECTION.
           FD STUDENT.
           01 STUDENT-FILE.
               05 STUDENT-ID PIC 9(5).
               05 NAME PIC A(25).

           WORKING-STORAGE SECTION.
           01 WS-STUDENT.
               05 WS-STUDENT-ID PIC 9(5).
               05 WS-NAME PIC A(25).
           01 WS-EOF PIC A(1).

       PROCEDURE DIVISION.
           OPEN INPUT STUDENT.
               PERFORM UNTIL WS-EOF="Y"
                   READ STUDENT INTO WS-STUDENT
                       AT END MOVE "Y" TO WS-EOF
                       NOT AT END DISPLAY WS-STUDENT
                   END-READ
                   OPEN EXTEND SCHOOL
                       WRITE NAME
                   END-WRITE
                   CLOSE SCHOOL
              END-PERFORM.
           CLOSE STUDENT.

       END PROGRAM READING-FILES.
