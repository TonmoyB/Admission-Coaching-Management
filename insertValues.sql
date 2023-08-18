-- MANAGER 101
INSERT INTO MANAGER (m_name, m_phoneNo, m_email) 
	VALUES ('Tonmoy Banik', '01630685251', 'tonmoybtonoy@gmail.com');
INSERT INTO MANAGER (m_name, m_phoneNo, m_email) 
	VALUES ('Nahin Abrar', '01309040483', 'asmnahin21@gmail.com');

-- BRANCH 201
INSERT INTO BRANCH (br_name, br_phoneNo, br_location, m_id) 
	VALUES ('MOTIJHEEL', '01630685251', 'Dhaka', 101);
INSERT INTO BRANCH (br_name, br_phoneNo, br_location, m_id) 
	VALUES ('FARMGATE', '01309040483', 'Rajshahi', 102);

-- COURSE 301
INSERT INTO COURSE (c_name, c_fee_TAKA) 
	VALUES ('PHYSICS', 1500);
INSERT INTO COURSE (c_name, c_fee_TAKA) 
	VALUES ('CHEMISTRY', 1500);

-- BATCH 401	
INSERT INTO BATCH (b_name, c_id) 
	VALUES ('OPERAND', 301);
INSERT INTO BATCH (b_name, c_id) 
	VALUES ('OPERAND', 302);
INSERT INTO BATCH (b_name, c_id) 
	VALUES ('INTEGER', 301);
INSERT INTO BATCH (b_name, c_id) 
	VALUES ('INTEGER', 301);
	
-- TEACHER 501
INSERT INTO TEACHER (t_name, t_email, t_phoneNo, t_salary, t_salaryStat, br_id) 
	VALUES ('TONMOY HOSSAIN DIHAN', 'dihan.cse@aust.edu', '01234567890', 50000, 'PAID', 201);
INSERT INTO TEACHER (t_name, t_email, t_phoneNo, t_salary, t_salaryStat, br_id) 
	VALUES ('NAWSHIN NAWAR ARONY', 'arony.cse@aust.edu', '01769548789', 50000, 'PAID', 202);	
	
-- STUDENT 190204001
-- 3 4 2
INSERT INTO STUDENT (st_name, st_email, st_phoneNo, c_id, b_id, br_id) 
	VALUES ('Minhajur Rahman Mahi', '190204001@aust.edu', '01672797420', 301, 401, 201);
	
-- SCHEDULE 601
-- 3 4 5
INSERT INTO SCHEDULE (sc_weekDay, sc_activityType, sc_startingTime, c_id, b_id, t_id) 
	VALUES ('SUNDAY', 'EXAM', '9:00 AM', 301, 401, 501);
INSERT INTO SCHEDULE (sc_weekDay, sc_activityType, sc_startingTime, c_id, b_id, t_id) 
	VALUES ('MONDAY', 'EXAM', '9:00 AM', 302, 402, 502);
INSERT INTO SCHEDULE (sc_weekDay, sc_activityType, sc_startingTime, c_id, b_id, t_id) 
	VALUES ('TUESDAY', 'CLASS', '8:00 AM', 301, 401, 501);
INSERT INTO SCHEDULE (sc_weekDay, sc_activityType, sc_startingTime, c_id, b_id, t_id) 
	VALUES ('WEDNESDAY', 'CLASS', '8:00 AM', 302, 402, 502);

-- EXAM 701
-- 3 
INSERT INTO EXAM (e_type, e_date, e_duration, e_totalMarks, e_time, c_id) 
	VALUES ('WRITTEN', TO_DATE('18-08-2023', 'DD-MM-YYYY'), '3 Hour', 70 ,'8:00 AM', 302);

	

SELECT * FROM MANAGER;
SELECT * FROM BRANCH;
SELECT * FROM COURSE;
SELECT * FROM BATCH;
SELECT * FROM TEACHER;
SELECT * FROM STUDENT;
SELECT * FROM SCHEDULE;
SELECT * FROM EXAM;

