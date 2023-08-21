set linesize 300;

DROP TABLE RESULT  CASCADE CONSTRAINTS;
DROP TABLE EXAM   CASCADE CONSTRAINTS;
DROP TABLE SCHEDULE CASCADE CONSTRAINTS;
DROP TABLE STUDENT  CASCADE CONSTRAINTS;
DROP TABLE TEACHER  CASCADE CONSTRAINTS;
DROP TABLE BATCH    CASCADE CONSTRAINTS;
DROP TABLE COURSE   CASCADE CONSTRAINTS;
DROP TABLE BRANCH   CASCADE CONSTRAINTS;
DROP TABLE MANAGER  CASCADE CONSTRAINTS;

CREATE TABLE MANAGER (
    m_id NUMBER PRIMARY KEY,
    m_name VARCHAR2(25),
    m_phoneNo VARCHAR2(11),
    m_email VARCHAR2(25)
);

CREATE TABLE BRANCH(
	br_id NUMBER PRIMARY KEY,
	br_name VARCHAR2(25),
	br_phoneNo VARCHAR2(11),
	br_location VARCHAR2(25),
	m_id NUMBER,
	FOREIGN KEY(m_id) REFERENCES MANAGER(m_id)
);

CREATE TABLE COURSE(
	c_id NUMBER PRIMARY KEY,
	c_name VARCHAR2(25),
	c_fee_TAKA NUMBER
);

CREATE TABLE BATCH(
	b_id NUMBER PRIMARY KEY,
	b_name VARCHAR2(15),
	c_id NUMBER,
	FOREIGN KEY(c_id) REFERENCES COURSE(c_id)
);

CREATE TABLE TEACHER(
	t_id NUMBER PRIMARY KEY,
	t_name VARCHAR2(20),
	t_email VARCHAR2(22),
	t_phoneNo VARCHAR2(11),
	t_salary NUMBER,
	t_salaryStat VARCHAR2(20),
	br_id NUMBER,
	FOREIGN KEY(br_id) REFERENCES BRANCH(br_id)
);

CREATE TABLE STUDENT(
	st_id NUMBER PRIMARY KEY,
	st_name VARCHAR2(20),
	st_email VARCHAR2(22),
	st_phoneNo VARCHAR2(11),
	c_id NUMBER,
	b_id NUMBER,
	br_id NUMBER,
	FOREIGN KEY(c_id) REFERENCES COURSE(c_id),
	FOREIGN KEY(b_id) REFERENCES BATCH(b_id),
	FOREIGN KEY(br_id) REFERENCES BRANCH(br_id)
);

CREATE TABLE SCHEDULE(
	sc_id NUMBER PRIMARY KEY,
	sc_weekDay VARCHAR2(15),
	sc_activityType VARCHAR2(15),
	sc_startingTime VARCHAR2(15),
	c_id NUMBER,
	b_id NUMBER,
	t_id NUMBER,
	FOREIGN KEY(c_id) REFERENCES COURSE(c_id),
	FOREIGN KEY(b_id) REFERENCES BATCH(b_id),
	FOREIGN KEY(t_id) REFERENCES TEACHER(t_id)
);

CREATE TABLE EXAM(
	e_id NUMBER PRIMARY KEY,
	e_type VARCHAR2(15),
	e_date DATE,
	e_duration VARCHAR2(15),
	e_totalMarks NUMBER,
	e_time VARCHAR2(15),
	c_id NUMBER,
	FOREIGN KEY(c_id) REFERENCES COURSE(c_id)
);

CREATE TABLE RESULT(
	r_id NUMBER PRIMARY KEY,
	e_id NUMBER,
	st_id NUMBER,
	r_obtainedMarks NUMBER,
	r_grade VARCHAR2(5),
	FOREIGN KEY(e_id) REFERENCES EXAM(e_id),	
	FOREIGN KEY(st_id) REFERENCES STUDENT(st_id)
);

commit;

--@"F:\Varsity\4.1\Lab\CSE4126\Admission Coaching Management\triggers_sequence.sql"
@"F:\Github\DDS_Project\Admission-Coaching-Management\triggers_sequence.sql"