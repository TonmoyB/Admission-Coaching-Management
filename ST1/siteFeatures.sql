SET SERVEROUTPUT ON;
SET VERIFY OFF;

CREATE OR REPLACE PACKAGE site_Features AS
    FUNCTION checkTotalUnpaid
    RETURN NUMBER;

    PROCEDURE show_unp_teachers(b IN varchar2);
END site_Features;
/

CREATE OR REPLACE PACKAGE BODY site_Features AS
    FUNCTION checkTotalUnpaid
    RETURN NUMBER
    IS
        totalUnpaid NUMBER := 0;
    BEGIN
        SELECT SUM(t_salary) INTO totalUnpaid FROM TEACHER1_ST1;
        
        RETURN totalUnpaid;
    END checkTotalUnpaid;

    PROCEDURE show_unp_teachers(b IN varchar2)
    IS
        tid NUMBER := 0;
        tname varchar2;
        tphone NUMBER;

    BEGIN
        for elements in (select T_ID, T_NAME, T_PHONENO 
                        FROM TEACHER1_ST1 
                        WHERE BRANCH_NAME = b) loop
            tid := elements.T_ID;  
            tname := elements.T_NAME;
            tphone := elements.T_PHONENO;

            DBMS_OUTPUT.PUT_LINE('Teacher ID: ' || tid || '  ' || 'Teacher Name: ' || tname
                                || ' ' || 'Teacher Phone: ' || tphone);
        end loop;
    END show_unp_teachers;


END site_Features;
/
