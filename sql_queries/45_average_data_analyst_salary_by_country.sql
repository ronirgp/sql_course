-- “What is the average yearly salary for Data Analyst jobs in each country?
--  Include only jobs with a 
-- listed yearly salary, and show the 10 countries with the highest average salary.”

SELECT job_country AS country,
ROUND(AVG(salary_year_avg), 0) AS average_yearly_salary
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
AND salary_year_avg IS NOT NULL
GROUP BY job_country 
ORDER BY average_yearly_salary DESC
LIMIT 10;
