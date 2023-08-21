DROP TABLE TEACHER1_ST1 CASCADE CONSTRAINTS;
DROP TABLE TEACHER2_ST1 CASCADE CONSTRAINTS;
DROP TABLE STUDENT1_ST1 CASCADE CONSTRAINTS;
DROP TABLE BRANCH_ST1 CASCADE CONSTRAINTS;

CREATE TABLE BRANCH_ST1 AS
SELECT * 
FROM BRANCH
WHERE br_location = 'DHAKA';

CREATE TABLE TEACHER1_ST1 AS 
SELECT 
    T.t_id,
    T.t_name,
    T.t_email,
    T.t_salaryStat,
	T.t_phoneNo,
	T.t_salary,
    BR.br_id AS branch_id,
    BR.br_name AS branch_name,
    BR.br_location,
	BR.br_phoneNo
FROM 
    TEACHER T
JOIN 
    BRANCH BR ON T.br_id = BR.br_id
WHERE 
    T.t_salaryStat = 'UNPAID' AND BR.br_location = 'DHAKA';


CREATE TABLE TEACHER2_ST1 AS 
SELECT 
    T.t_id,
    T.t_name,
    T.t_email,
    T.t_salaryStat,
	T.t_phoneNo,
	T.t_salary,
    BR.br_id AS branch_id,
    BR.br_name AS branch_name,
    BR.br_location,
	BR.br_phoneNo
FROM 
    TEACHER T
JOIN 
    BRANCH BR ON T.br_id = BR.br_id
WHERE 
    T.t_salaryStat = 'PAID' AND BR.br_location = 'DHAKA';


CREATE TABLE STUDENT1_ST1 AS 
SELECT 
    ST.st_id,
    ST.st_name,
    ST.st_email,
    ST.st_phoneNo,
	ST.c_id,
	ST.b_id,
    BR.br_id AS branch_id,
    BR.br_name AS branch_name,
    BR.br_location,
	BR.br_phoneNo
FROM 
    STUDENT ST
JOIN 
    BRANCH BR ON ST.br_id = BR.br_id
WHERE 
    BR.br_location = 'DHAKA';

