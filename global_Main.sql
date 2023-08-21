SET SERVEROUTPUT ON;
SET VERIFY OFF;

PROMPT Hello Student

ACCEPT day char PROMPT "Enter WeekDay: "
ACCEPT actype char PROMPT "Enter Activity(EXAM/CLASS): "

declare
    d varchar2(25) := '&day';
    ac varchar2(25) := '&actype';

begin

    global_Features.show_schedule(d,ac);

end;
/