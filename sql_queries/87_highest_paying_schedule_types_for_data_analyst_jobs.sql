-- Question: Which 10 job schedule types have the highest average yearly salary for Data Analyst
 -- positions?

 SELECT job_schedule_type AS job_schedule_name,
 ROUND(AVG(salary_year_avg), 0) AS average_salary
 FROM job_postings_fact
 WHERE job_title_short = 'Data Analyst'
 AND salary_year_avg IS NOT NULL
 GROUP BY job_schedule_type
 HAVING COUNT(*) >= 10
 ORDER BY average_salary DESC
 LIMIT 10;