-- Finding average,min,max ranges of salary
SELECT
    ROUND(AVG(salary_in_usd), 2) AS avg_salary_usd,
    MIN(salary_in_usd) AS min_salary_usd,
    MAX(salary_in_usd) AS max_salary_usd
FROM salaries;

-- Salary Vs Work Year

SELECT
    work_year,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary_usd
FROM salaries
GROUP BY work_year
ORDER BY work_year;

-- Salary vs Experience Level
SELECT
    experience_level,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary_usd
FROM salaries
GROUP BY experience_level
ORDER BY experience_level;

-- Remote Ratio vs Salary

SELECT
    remote_ratio,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary_usd
FROM salaries
GROUP BY remote_ratio
ORDER BY remote_ratio;

-- Employment type vs Salary 
SELECT
    employment_type,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary_usd
FROM salaries
GROUP BY employment_type
ORDER BY employment_type;

-- Company Size vs Salary 
SELECT
    company_size,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary_usd
FROM salaries
GROUP BY company_size
ORDER BY company_size;

-- Top 10 Job Roles with Highest Paying
SELECT
    job_title,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary_usd
FROM salaries
GROUP BY job_title
ORDER BY avg_salary_usd DESC
LIMIT 10;
-- Top 10 Job Roles 
SELECT
    job_title,
    COUNT(*) AS total_jobs
FROM salaries
GROUP BY job_title
ORDER BY total_jobs DESC
LIMIT 10;
-- Top 10 Company Locations BY Salary 
SELECT
    company_location,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary_usd
FROM salaries
GROUP BY company_location
ORDER BY avg_salary_usd  DESC
LIMIT 10;
--  Top 10 Company Locations BY Jobs
SELECT
    company_location,
    COUNT(*) AS total_jobs
FROM salaries
GROUP BY company_location
ORDER BY total_jobs DESC
LIMIT 10;
-- Top 10 Employee Residencies BY Salary
SELECT
    employee_residence,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary_usd
FROM salaries
GROUP BY employee_residence
ORDER BY avg_salary_usd  DESC
LIMIT 10;
--  Top 10 Employee Residencies BY Jobs
SELECT
    employee_residence,
    COUNT(*) AS total_jobs
FROM salaries
GROUP BY employee_residence
ORDER BY total_jobs DESC
LIMIT 10;

-- Company Location vs Remote Ratio vs Salary
Select 
company_location,remote_ratio,
 ROUND(AVG(salary_in_usd), 2) AS avg_salary_usd
 from salaries
 group by company_location,remote_ratio
 order by avg_salary_usd desc 
 limit 10 ;
 
 -- Experience vs Remote Ratio vs Salary
Select 
experience_level,remote_ratio,
 ROUND(AVG(salary_in_usd), 2) AS avg_salary_usd
 from salaries
 group by experience_level,remote_ratio
 order by experience_level desc ;
 
 -- Company Size vs Remote Ratio vs Salary
Select 
company_size,remote_ratio,
 ROUND(AVG(salary_in_usd), 2) AS avg_salary_usd
 from salaries
 group by company_size,remote_ratio
 order by avg_salary_usd desc ;
 
  -- Company Size vs Experience vs Salary
Select 
company_size,experience_level,
 ROUND(AVG(salary_in_usd), 2) AS avg_salary_usd
 from salaries
 group by company_size,experience_level
 order by avg_salary_usd desc ;
 
 -- Demand vs Pay 
 SELECT
    job_title,
    COUNT(*) AS job_count,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary_usd
FROM salaries
GROUP BY job_title
ORDER BY job_count DESC
LIMIT 10;
