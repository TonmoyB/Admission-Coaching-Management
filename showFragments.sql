



select * FROM SCHEDULE WHERE sc_weekDay = 'MONDAY' AND sc_activityType = 'EXAM';
select * FROM SCHEDULE WHERE sc_weekDay = 'MONDAY' AND sc_activityType = 'CLASS';
select * FROM EXAM WHERE e_date = '18-08-2023';

commit;