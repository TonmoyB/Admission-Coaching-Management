SET SERVEROUTPUT ON;
SET VERIFY OFF;

CREATE OR REPLACE PACKAGE insert_TO_Tables AS
    PROCEDURE insertCourse(n IN varchar2, f IN NUMBER);
END insert_TO_Tables;
/

CREATE OR REPLACE PACKAGE BODY insert_TO_Tables AS
    PROCEDURE insertCourse(n IN varchar2, f IN NUMBER)
    IS
    begin
      INSERT INTO COURSE (c_name, c_fee_TAKA) 
      VALUES (n, f);
    end insertCourse;

END insert_TO_Tables;
/


CREATE OR REPLACE PACKAGE update_Tables AS
    PROCEDURE updateCourse(cI IN NUMBER, n IN VARCHAR2, f IN NUMBER);
END update_Tables;
/

CREATE OR REPLACE PACKAGE BODY update_Tables AS
    PROCEDURE updateCourse(cI IN NUMBER, n IN VARCHAR2, f IN NUMBER)
    IS
    BEGIN
        UPDATE COURSE
        SET c_name = n, c_fee_TAKA = f
        WHERE c_id = cI;
    END updateCourse;
END update_Tables;
/

CREATE OR REPLACE PACKAGE delete_Tables AS
    PROCEDURE deleteCourse(cI IN NUMBER);
END delete_Tables;
/

CREATE OR REPLACE PACKAGE BODY delete_Tables AS
    PROCEDURE deleteCourse(cI IN NUMBER)
    IS
    BEGIN
        DELETE COURSE
        WHERE c_id = cI;
    END deleteCourse;
END delete_Tables;
/
