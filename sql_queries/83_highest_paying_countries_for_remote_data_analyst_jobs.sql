-- Question: Which 10 countries have the highest average yearly salary for remote Data Analyst jobs,
-- considering only countries with at least 20 salary-reported postings?

SELECT job_country AS country_name,
ROUND(AVG(salary_year_avg), 0) AS average_salary
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
AND job_work_from_home = TRUE
AND salary_year_avg IS NOT NULL
GROUP BY job_country
HAVING COUNT(*) >= 20
ORDER BY average_salary DESC
LIMIT 10;