-- “What is the average yearly salary for remote versus non-remote Data Analyst jobs?
-- Include only postings that have a listed yearly salary.”
 SELECT job_work_from_home AS romote,
 ROUND(AVG(salary_year_avg), 0) AS average_salary
 FROM job_postings_fact
 WHERE job_title_short = 'Data Analyst'
 AND salary_year_avg IS NOT NULL 
 GROUP BY job_work_from_home
 ORDER BY average_salary DESC;
 