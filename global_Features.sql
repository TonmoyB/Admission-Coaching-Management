SET SERVEROUTPUT ON;
SET VERIFY OFF;

CREATE OR REPLACE PACKAGE global_Features AS
    PROCEDURE show_schedule(da IN varchar2, act IN varchar2);
END global_Features;
/

CREATE OR REPLACE PACKAGE BODY global_Features AS
    PROCEDURE show_schedule(da IN varchar2, act IN varchar2)
    IS
        id number;
        day varchar2(15);
        ac varchar2(20);
        ti varchar2(20);
        c_id number;
        b_id number;
        t_id number;

    BEGIN
        for elements in (select * from SCHEDULE 
                            WHERE sc_weekDay = da AND sc_activityType = act) loop
            id := elements.sc_id;
            day := elements.sc_weekDay;
            ac := elements.sc_activityType;
            ti := elements.sc_startingTime;
            c_id := elements.c_id;
            b_id := elements.b_id;
            t_id := elements.t_id;

            DBMS_OUTPUT.PUT_LINE('SC ID: ' || id || '  ' || 
                                'SC Weekday: ' || day || ' ' || 
                                'SC Activity: ' || ac || ' ' || 
                                'SC Time : ' || ti || ' ' ||
                                'C_ID: ' || c_id || ' ' ||
                                'B_ID: ' || b_id || ' ' ||
                                'T_ID: ' || t_id);
        end loop;
    END show_schedule;

END global_Features;
/
