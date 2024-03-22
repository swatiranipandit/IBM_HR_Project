select * from project_hr_db.employee;

-- Total number of employees who left the company?
select count(*) as AttritionCount from project_hr_db.employee where Attrition= 'Yes';

-- Average daily rate of employee who frequently travel for business?
select avg(DailyRate) from employee where BusinessTravel= 'Travel_Frequently';

-- How many employee are satisfied with their job involvement?
select JobInvolvement, count(employeenumber) from employee group by 1;

-- overall avg rating performance of employees?
select avg(PerformanceRating) as rating_performance_avg from employee;

-- How many employee is doing overtime?
select count(EmployeeNumber) as Overtime_employee from employee where OverTime= 'Yes';

-- How marital performance status of work?
select MaritalStatus,sum(PerformanceRating) as marital_performance from employee group by 1;

-- Effect of gender on work performance
select Gender,sum(PerformanceRating) as marital_performance from employee group by 1;