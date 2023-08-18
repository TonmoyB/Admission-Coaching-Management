SET SERVEROUTPUT ON;
SET VERIFY OFF;

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