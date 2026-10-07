-- Query #9: Remote vs. non-remote Data Analyst salary
--
-- Manager's request:
-- "What is the average yearly salary for remote Data Analyst jobs
-- compared with non-remote jobs?"

SELECT
    job_work_from_home AS remote,
    ROUND(AVG(salary_year_avg), 0) AS average_salary
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
  AND salary_year_avg IS NOT NULL
GROUP BY job_work_from_home
ORDER BY average_salary DESC;