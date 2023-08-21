SET SERVEROUTPUT ON;
SET VERIFY OFF;
/*

3/4 ta procwdure lagbe 

i u d  operation

both way connection

input diye function kaj krle function add korbo
*/
CREATE OR REPLACE PACKAGE ACM AS
	PROCEDURE showTeacherofBranch();
	PROCEDURE showStudentofCourse();
	
	FUNCTION checkUnpaidTeachers(albID IN NUMBER)
	RETURN NUMBER;
	FUNCTION checkExamDays(albID IN NUMBER)
	RETURN NUMBER;
END ACM;
/

CREATE OR REPLACE PACKAGE BODY ACM AS

	
	PROCEDURE showTeacherofBranch()
	IS
	BEGIN
	

	END showTeacherofBranch;
	
	PROCEDURE showStudentofCourse()
	IS
	BEGIN
		
	END showStudentofCourse;
	
	FUNCTION checkUnpaidTeachers()
	RETURN NUMBER
	IS
		
	BEGIN
			
		RETURN 1;
	END checkUnpaidTeachers;
	
	FUNCTION checkExamDays()
	RETURN NUMBER
	IS
		
	BEGIN
			
		RETURN 1;
	END checkExamDays;
	
END ACM;
/


DECLARE
	fa NUMBER;
	fb NUMBER;
BEGIN

    ACM.showTeacherofBranch();	
	ACM.showStudentofCourse();
	
	fa := ACM.checkUnpaidTeachers();
	fb := ACM.checkExamDays();
	
END;
/