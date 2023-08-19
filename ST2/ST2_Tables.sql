CREATE TABLE TEACHER1_ST2 AS 
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
    T.t_salaryStat = 'UNPAID' AND BR.br_location = 'RAJSHAHI';


CREATE TABLE TEACHER2_ST2 AS 
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
    T.t_salaryStat = 'PAID' AND BR.br_location = 'RAJSHAHI';