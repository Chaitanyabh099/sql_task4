select * from salary_data

-- 1. write a qurey on salary data calculate sum,minimum,maximum,average and count of salary column.
select min(salary) as min_salary ,
	max(salary) as max_salary,
	avg(salary) as average_salary,
	sum(salary) as sum_salary,
	count(salary) as count_salary from salary_data


 /*2. write a qurey on salary data calculate sum,minimum,maximum,average and count of salary column
	the condition is the salary range is 100000 to 150000.*/

select * from salary_data where salary between 100000 and 150000

select 
	sum(salary) as sum_salary,
	min(salary) as min_salary ,
	max(salary) as max_salary,
	avg(salary) as average_salary,
	count(salary) as count_salary from salary_data where salary between 100000 and 150000

select * from salary_data

/* 3. write a query the job_title is Data Analyst from US ,and salary would be descending order */
		
select * from salary_data 
	where job_title = 'Data Analyst' and employee_residence = 'US' 
	order by salary desc limit  20

/*4. write a query, the salary is greater than 50000 and less than 100000,but experience level is
SE(senion) & MI(medium) and employment_type is FT(full time) living in us*/

select * from salary_data where salary > 50000 and salary < 150000 and experience_level in('MI', 'SE')
and employment_type = 'FT' and employee_residence = 'US'


/* 5 write query count in job_title */
select distinct job_title from salary_data
	
select count(distinct job_title) from salary_data
	
/*6 write query sum and count of salary_currency of 'CAD' and 'INR' and 'DKK'*/
select sum(salary) as sum_currency from salary_data where salary_currency in ('CAD','INR','DKK')

/*7 write a query the abg salary of "AI Engineer","Data Analyst","Data Scientist"*/

select avg(salary) as avg_salary from salary_data where job_title in('AI Engineer','Data Analyst','Data Scientist')

/* 8 write a query calculate min,max , avg of salary the job_title is Data Analyst and experience entry level*/
select min(salary) as min_salary, max(salary) as max_salary, avg(salary) as avg_salary from salary_data where experience_level = 'EN' and job_title = 'Data Analyst'

/* 9 write a query od salary data of job_title is data analyst and experience level is entry(EN) salary is ascending*/
select * from salary_data where job_title = 'Data Analyst' and experience_level = 'EN' order by salary

/* 10 write a query of salary_data the employee is on contract base the salary is highest to lowest*/
select distinct employment_type from salary_data
select * from salary_data where employment_type = 'CT' order by salary desc











