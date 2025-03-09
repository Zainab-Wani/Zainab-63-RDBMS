use university;
show tables;
desc instructors;
select * from instructors;

select name,salary from instructors;
/*concade combining multiple column into 1 */
select concat(name, ' earns ' ,salary ) from instructors;
/*aliasing*/
select concat(name, ' earns ' ,salary )as 'earns' from instructors;

/*exple*/
select concat(name, ' works in ' ,deptid ) from instructors;
select concat(name, ' works in ' ,deptid ) as 'works in'from instructors;


/*print substring  from string*/
select substr(name,5) from instructors;
/*first three characters print*/
select substr(name,5,3) from instructors;


select name from students;
/*upper and lower case manupulation function*/
select upper(name) from students;
select lower(name) from students;

/*task:to make the first word of the first name upper and other lower case, using substring, concat.*/
select  substr(name,1,1)from students;
select  substr(name,1,1),substr(name,2)from students;
select  substr(name,1,1),lower(substr(name,2))from students;
select  concat(substr(name,1,1),lower(substr(name,2)))from students;

/*left and right function */
select  left(name,5) from students;
select  right(name,5) from students;

/*trim  leading space and railing space*/
select ltrim('   hello   ');
select rtrim('   hello   ');
select trim('   hello   ');


/*padding leaging pad and railing pad */
select salary from instructors;
select lpad(salary,15,'*') from instructors;
select rpad(salary,15,'*') from instructors;
select lpad(rpad(salary,15,'*'),22,'*') from instructors;

select name,DOB from students;
desc students;
select name,day(DOB) from students;
select name,month(DOB) from students;
select name,year(DOB)from students;
/*for date and time field we further print these*/
select name,hour(DOB) from students;
select name,minute(DOB) from students;
select name,second(DOB) from students;

/*dayname and monthname and print a particular day also age calculation using current date */
select name,dayname(DOB),monthname(DOB) from students
where dayname(dob)='Sunday';
select name,year(curdate())-year(dob) as age from students;

/*salary increment deparment wise using case method*/
select name, salary ,deptid,
case deptid
when 3 then salary*1.30
when 6 then salary*1.40
when 9 then salary*1.50
else salary /*optional*/
end
as incsal from instructors;

/* if null*/
use university;
show tables;
select ifnull(null,"n");
select ifnull(10,"n")
















