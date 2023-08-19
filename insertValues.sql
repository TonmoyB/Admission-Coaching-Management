-- MANAGER 101
INSERT INTO MANAGER (m_name, m_phoneNo, m_email) 
	VALUES ('Tonmoy Banik', '01630685251', 'tonmoybtonoy@gmail.com');
INSERT INTO MANAGER (m_name, m_phoneNo, m_email) 
	VALUES ('Nahin Abrar', '01309040483', 'asmnahin21@gmail.com');
INSERT INTO MANAGER (m_name, m_phoneNo, m_email) 
	VALUES ('Topan Banik', '01830685251', 'topanb@gmail.com');
INSERT INTO MANAGER (m_name, m_phoneNo, m_email) 
	VALUES ('Abrar Alam', '01209040482', 'abrar21@gmail.com');
INSERT INTO MANAGER (m_name, m_phoneNo, m_email) 
	VALUES ('Nahin Haque', '01624216081', 'abrar2@gmail.com');

-- BRANCH 201
INSERT INTO BRANCH (br_name, br_phoneNo, br_location, m_id) 
	VALUES ('MOTIJHEEL', '01630685251', 'DHAKA', 101);
INSERT INTO BRANCH (br_name, br_phoneNo, br_location, m_id) 
	VALUES ('FARMGATE', '01309040483', 'DHAKA', 102);
INSERT INTO BRANCH (br_name, br_phoneNo, br_location, m_id) 
	VALUES ('NOTUN BAZAR', '01630685252', 'RAJSHAHI', 101);
INSERT INTO BRANCH (br_name, br_phoneNo, br_location, m_id) 
	VALUES ('NEWMARKET', '01309040484', 'RAJSHAHI', 102);
INSERT INTO BRANCH (br_name, br_phoneNo, br_location, m_id) 
	VALUES ('RING ROAD', '01708040483', 'DHAKA', 101);

-- COURSE 301
INSERT INTO COURSE (c_name, c_fee_TAKA) 
	VALUES ('PHYSICS', 1500);
INSERT INTO COURSE (c_name, c_fee_TAKA) 
	VALUES ('CHEMISTRY', 1500);
INSERT INTO COURSE (c_name, c_fee_TAKA) 
	VALUES ('MATH', 1600);
INSERT INTO COURSE (c_name, c_fee_TAKA) 
	VALUES ('BIOLOGY', 1200);
INSERT INTO COURSE (c_name, c_fee_TAKA) 
	VALUES ('HIGHER MATHEMATICS', 1500);

-- BATCH 401	
INSERT INTO BATCH (b_name, c_id) 
	VALUES ('OPERAND', 301);
INSERT INTO BATCH (b_name, c_id) 
	VALUES ('OPERAND', 302);
INSERT INTO BATCH (b_name, c_id) 
	VALUES ('INTEGER', 301);
INSERT INTO BATCH (b_name, c_id) 
	VALUES ('INTEGER', 301);
INSERT INTO BATCH (b_name, c_id) 
	VALUES ('SYNTAX', 302);
	
-- TEACHER 501
INSERT INTO TEACHER (t_name, t_email, t_phoneNo, t_salary, t_salaryStat, br_id) 
	VALUES ('TONMOY HOSSAIN DIHAN', 'dihan.cse@aust.edu', '01234567890', 50000, 'UNPAID', 203);
INSERT INTO TEACHER (t_name, t_email, t_phoneNo, t_salary, t_salaryStat, br_id) 
	VALUES ('NAWSHIN NAWAR ARONY', 'arony.cse@aust.edu', '01769548789', 50000, 'PAID', 202);
INSERT INTO TEACHER (t_name, t_email, t_phoneNo, t_salary, t_salaryStat, br_id) 
	VALUES ('ZARIN TASNIM SHEJUTI', 'shejuti.cse@aust.edu', '01734567890', 50000, 'PAID', 201);
INSERT INTO TEACHER (t_name, t_email, t_phoneNo, t_salary, t_salaryStat, br_id) 
	VALUES ('SANZANA KARIM LORA', 'lora.cse@aust.edu', '01669548789', 50000, 'UNPAID', 202);	
INSERT INTO TEACHER (t_name, t_email, t_phoneNo, t_salary, t_salaryStat, br_id) 
	VALUES ('JOY SAHA', 'joy.cse@aust.edu', '01233367890', 50000, 'UNPAID', 201);
	
-- STUDENT 190204001
-- 3 4 2
INSERT INTO STUDENT (st_name, st_email, st_phoneNo, c_id, b_id, br_id) 
	VALUES ('Minhajur Rahman Mahi', '190204001@aust.edu', '01672797420', 301, 401, 201);
INSERT INTO STUDENT (st_name, st_email, st_phoneNo, c_id, b_id, br_id) 
	VALUES ('Zabin Shreya', '190204003@aust.edu', '01672237420', 302, 402, 202);
INSERT INTO STUDENT (st_name, st_email, st_phoneNo, c_id, b_id, br_id) 
	VALUES ('Sifat Ahmed', '190204006@aust.edu', '01672797320', 301, 401, 201);
INSERT INTO STUDENT (st_name, st_email, st_phoneNo, c_id, b_id, br_id) 
	VALUES ('Animesh Das', '190204058@aust.edu', '01521556456', 302, 402, 202);
INSERT INTO STUDENT (st_name, st_email, st_phoneNo, c_id, b_id, br_id) 
	VALUES ('Marzia Binta Monir', '190204114@aust.edu', '01537201029', 302, 402, 202);

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
INSERT INTO SCHEDULE (sc_weekDay, sc_activityType, sc_startingTime, c_id, b_id, t_id) 
	VALUES ('SATURDAY', 'EXAM', '9:00 AM', 301, 401, 501);

-- EXAM 701
-- 3 
INSERT INTO EXAM (e_type, e_date, e_duration, e_totalMarks, e_time, c_id) 
	VALUES ('WRITTEN', TO_DATE('18-08-2023', 'DD-MM-YYYY'), '3 Hour', 70 ,'8:00 AM', 301);
INSERT INTO EXAM (e_type, e_date, e_duration, e_totalMarks, e_time, c_id) 
	VALUES ('WRITTEN', TO_DATE('18-08-2023', 'DD-MM-YYYY'), '3 Hour', 70 ,'8:00 AM', 302);
INSERT INTO EXAM (e_type, e_date, e_duration, e_totalMarks, e_time, c_id) 
	VALUES ('WRITTEN', TO_DATE('18-08-2023', 'DD-MM-YYYY'), '3 Hour', 70 ,'8:00 AM', 301);
INSERT INTO EXAM (e_type, e_date, e_duration, e_totalMarks, e_time, c_id) 
	VALUES ('WRITTEN', TO_DATE('18-08-2023', 'DD-MM-YYYY'), '3 Hour', 70 ,'8:00 AM', 302);
INSERT INTO EXAM (e_type, e_date, e_duration, e_totalMarks, e_time, c_id) 
	VALUES ('WRITTEN', TO_DATE('18-08-2023', 'DD-MM-YYYY'), '3 Hour', 70 ,'8:00 AM', 301);	

-- RESULT 801
-- 7 19020
INSERT INTO RESULT (e_id, st_id, r_obtainedMarks, r_grade) 
	VALUES (701, 190204001, 67, 'B+');
INSERT INTO RESULT (e_id, st_id, r_obtainedMarks, r_grade) 
	VALUES (701, 190204003, 64, 'B');
INSERT INTO RESULT (e_id, st_id, r_obtainedMarks, r_grade) 
	VALUES (702, 190204006, 90, 'A+');
INSERT INTO RESULT (e_id, st_id, r_obtainedMarks, r_grade) 
	VALUES (703, 190204058, 82, 'A+');
INSERT INTO RESULT (e_id, st_id, r_obtainedMarks, r_grade) 
	VALUES (702, 190204114, 70, 'A-');
