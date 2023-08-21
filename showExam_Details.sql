SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
    dt DATE;
    frmt VARCHAR2(20) := 'DD-MM-YYYY';

    id number;
    etype varchar2(15);
    edate date;
    eduration varchar2(20);
    marks number;
    etime varchar2(20);
    cid number;

BEGIN
    dt := TO_DATE('&examDate', frmt);

    for elements in (select * FROM EXAM WHERE e_date = DATE '2023-08-18') loop
    id := elements.e_id;
    etype := elements.e_type;
    edate := elements.e_date;
    eduration := elements.e_duration;
    marks := elements.e_totalMarks;
    etime := elements.e_time;
    cid := elements.c_id;

    DBMS_OUTPUT.PUT_LINE('Exam ID: ' || id || '  ' || 
                        'Exam Type: ' || etype || ' ' || 
                        'Exam Date: ' || TO_CHAR(edate, frmt) || ' ' || 
                        'Exam Duration : ' || eduration || ' ' ||
                        'Marks: ' || marks || ' ' ||
                        'Time: ' || etime || ' ' ||
                        'C_ID: ' || cid);

    end loop;
END;
/
