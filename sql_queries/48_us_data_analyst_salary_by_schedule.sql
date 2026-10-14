-- “What is the average yearly salary for Data Analyst jobs in the United States, grouped
 -- by job schedule type? 
-- Include only jobs with a listed yearly salary. Show the highest average salary first.”

SELECT job_schedule_type AS job_schedule,
ROUND(AVG(salary_year_avg), 0) AS average_yearly_salary
FROM job_postings_fact 
WHERE job_title_short = 'Data Analyst'
AND job_country = 'United States'
AND salary_year_avg IS NOT NULL
GROUP BY job_schedule_type
ORDER BY average_yearly_salary DESC;


 