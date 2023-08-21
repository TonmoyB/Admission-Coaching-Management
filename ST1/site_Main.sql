SET SERVEROUTPUT ON;
SET VERIFY OFF;


PROMPT Press 1 to check total unpaid salary of This Branch
PROMPT Press 2 to check Info of unpaid

ACCEPT choice NUMBER
/*
ACCEPT c_ID CHAR PROMPT "Course ID(Only for Update/Delete) 3__: "
ACCEPT c_Name CHAR PROMPT "Course Name_(Give anything if Deleting): ";
ACCEPT c_Fee NUMBER PROMPT "Course Fee_(Give anything if Deleting): ";
*/
declare
    ch NUMBER := &choice;
    unp NUMBER := 0;
    bname varchar2(25) := '&branchName';


begin

  case ch
    when 1 then
        unp := site_Features.checkTotalUnpaid();
        DBMS_OUTPUT.PUT_LINE('Total Unpaid Salary: ' || unp);
     
    when 2 then 
        site_Features.show_unp_teachers(bname);
     
    when 3 then 
        DBMS_OUTPUT.PUT_LINE('Wrong Choice');
     
    else 
        DBMS_OUTPUT.PUT_LINE('Wrong Choice');
  end case;
  
end;
/