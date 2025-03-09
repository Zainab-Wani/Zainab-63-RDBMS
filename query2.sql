/*multi row functions,aggrgate functions(max,min,sum,avg,count)*/
use university;
show tables;
select max(salary) as maxsal from instructors;
select min(salary) as minsal from instructors;
select avg(salary) as avgsal from instructors;
select round(avg(salary),2) as avgsal from instructors;/*round of avg salary to 2 decimal point using single row functions with multi row*/
select sum(salary) as sumsal from instructors;
select count(InstructorID) as noofemp from instructors;

/* Multi row function show in one line*/
select max(salary) as maxsal,
       min(salary) as minsal,
       round(avg(salary),2) as avgsal,
       sum(salary) as sumsal,
       count(InstructorID) as noofemp from instructors;
   /* These function cant accept null  but only count(*) multi row function accept null*/    
       


       

