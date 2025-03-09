use university2;
show tables;
select * from instructors;


/*projection*/
select name,salary from instructors;
select salary,name from instructors;

/*desc to show datatype*/
desc instructors;

select name"intruction name",salary*12 as "annual salary"from instructors; /*column aliasing,change in built name*/
select distinct deptid, name from instructors; 

select *from students;
select *
from students
where deptid=5;

select *
from students
where gender="female";

select *
from students
where deptid<5;

select*
from students 
where deptid=5 and gender="female";


select *
from students
where not( deptid=5 and gender="female");


select *from instructors
where salary<=80000;


select name,salary from instructors
where salary<=80000;

select *from instructors
where salary>=80000 and salary<=85000;


select *from instructors
where salary between 80000 and 85000;

select  name,salary*12 as "annual salary" from instructors
where salary*12<1000000;

select  name,salary*12 as "annual salary" from instructors
where "annual salary"*12<1000000; /*in where we cant use aliases and it will not work*/

select  *from instructors
where deptid=1 or deptid=2 or deptid=3 or deptid=4;

select  *from instructors
where deptid in(1,2,3,4,5);

select  *from instructors
where deptid not in(1,2,3,4,5);

select  *from instructors
where deptid  in(1,2,3,4,5) and (salary between 80000 and 85000);


select  *from students
where name= "Oliver Miller";

select  *from students
where name like 'o%';

select  *from students
where name like '%n';

select  *from students
where name like 'o%n';

select  *from students
where name like '%a_';

select  *from students
where name like '%a__';

select  *from students
where name like '%\_%';

select  *from students
where name like '%\%%';
















