/*group by clauses: if we want to convert one table into different tables*/
select  deptid, max(salary),count(*)
from instructors
group by deptid;

select  deptid,count(*)
from students
group by deptid;

use university;
show tables; 
select *from enrollments;
/*grade distribution counting with avg calculation*/
select grade,count(*)
from enrollments
group by grade
order by grade;

select studentid,count(*)
from enrollments
group by studentid
order by studentid;

select courseid,count(*)
from enrollments
group by courseid
order by courseid;

/*having clause*/
select courseid,count(*)
from enrollments
group by courseid 
having count(*)>10
order by courseid;









