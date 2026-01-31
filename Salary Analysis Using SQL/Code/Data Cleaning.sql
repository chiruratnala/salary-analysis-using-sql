-- Data Cleaning and Preprocessing

create database salary;
use salary;
select count(*) from salaries;
describe salaries;
-- type casting 
alter table salaries
modify experience_level varchar(50), 
modify employment_type varchar(50),
modify job_title varchar(50),
modify salary_currency varchar(50),
modify employee_residence varchar(100),
modify company_location varchar (50),
modify company_size varchar(50);

set sql_safe_updates =0;

-- Converting short forms to long 
update salaries set experience_level =
case  experience_level
when 'SE' Then 'Senior-level'
when 'EN' then  'Entry-level'
 when 'MI' then 'Mid-level'
 when 'EX'then'Executive-level'
 end;
 
 update salaries set employment_type =
case  employment_type
when 'FT'then 'Full-time'
when'PT'then'Part-time'
when'CT'then'Contract'
when'FL'then'Freelance'
end;

alter table salaries 
modify remote_ratio varchar(50);

update salaries set remote_ratio =
case remote_ratio 
when 0 then 'On-site'
when 50 then 'Hybrid'
when 100 then 'Remote'
end;

update salaries set company_size=
case company_size 
when 'L' then 'Large'
when 'S' then 'Small'
when 'M' then 'Medium'
end;
set sql_safe_updates=1;
 
 -- finding duplicate values
select work_year,experience_level,employment_type,job_title,salary,salary_currency,salary_in_usd,employee_residence,remote_ratio,company_location,company_size,count(*)as cnt 
from salaries
group by work_year,experience_level,employment_type,job_title,salary,salary_currency,salary_in_usd,employee_residence,remote_ratio,company_location,company_size
having count(*)>1;
-- counting duplicate values
select sum(cnt-1) as duplicate_rows from(select work_year,experience_level,employment_type,job_title,salary,salary_currency,
salary_in_usd,employee_residence,remote_ratio,company_location,company_size ,count(*) as cnt
from salaries
group by work_year,experience_level,employment_type,job_title,salary,salary_currency,salary_in_usd,employee_residence,
remote_ratio,company_location,company_size
having count(*)>1
)t;
-- deleting duplicate values 
delete from salaries where ( work_year,experience_level,employment_type,job_title,salary,salary_currency,
salary_in_usd,employee_residence,remote_ratio,company_location,company_size)in(select  work_year,experience_level,employment_type,job_title,salary,salary_currency,
salary_in_usd,employee_residence,remote_ratio,company_location,company_size from (select *,row_number() over (partition by work_year,experience_level,employment_type,job_title,salary,salary_currency,
salary_in_usd,employee_residence,remote_ratio,company_location,company_size)as rn from salaries)t where rn>1);

select count(*) from salaries;
-- finding null values
select count(*) from salaries where  
work_year is null or 
experience_level is null or 
employment_type is null or
job_title is null or 
salary is null or 
salary_currency is null or
salary_in_usd is null or 
employee_residence is null or
remote_ratio is null or
company_location is null or
company_size is null ;
-- Droping unwanted columns from table 
alter table salaries
drop column salary_currency;

alter table salaries
drop column salary;

select * from salaries;