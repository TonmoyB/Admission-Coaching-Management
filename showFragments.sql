select sum(t_salary)
  from TEACHER1_ST1;
  
select T_ID, T_NAME, T_PHONENO FROM TEACHER1_ST1 WHERE BRANCH_NAME = 'MOTIJHEEL';

select * FROM SCHEDULE WHERE sc_weekDay = 'MONDAY' AND sc_activityType = 'EXAM';
select * FROM SCHEDULE WHERE sc_weekDay = 'MONDAY' AND sc_activityType = 'CLASS';
select * FROM EXAM WHERE e_date = '18-08-2023';

commit;