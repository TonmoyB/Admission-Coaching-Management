SET SERVEROUTPUT ON;
SET VERIFY OFF;

ACCEPT choice NUMBER PROMPT "1. Insert || 2. Update || 3. Delete || ???"
ACCEPT c_ID CHAR PROMPT "Course ID(Only for Update/Delete) 3__: "
ACCEPT c_Name CHAR PROMPT "Course Name_(Give anything if Deleting): ";
ACCEPT c_Fee NUMBER PROMPT "Course Fee_(Give anything if Deleting): ";

declare
    cid NUMBER := &c_ID;
    ch NUMBER := &choice;
    cName VARCHAR2(25) := '&c_Name';
    cFee NUMBER := &c_Fee;
begin
  DBMS_OUTPUT.PUT_LINE('Welcome Manager' || chr(10));

  case ch
    when 1 then
        DBMS_OUTPUT.PUT_LINE('Inserting... Hold tight!');
        insert_TO_Tables.insertCourse(cName, cFee);

    when 2 then 
        DBMS_OUTPUT.PUT_LINE('Updating');
        update_Tables.updateCourse(cid, cName, cFee);
    when 3 then 
    
        DBMS_OUTPUT.PUT_LINE('Deleted :(');
        delete_Tables.deleteCourse(cid);
    else 
        DBMS_OUTPUT.PUT_LINE('Wrong Choice');
  end case;
  
end;
/