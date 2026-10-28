-- Question: Which 10 companies have the highest average yearly salary for remote Data Analyst jobs
-- that do not mention a degree requirement?

SELECT company_dim.name AS company_name,
ROUND(AVG(salary_year_avg), 0) AS average_salary
FROM job_postings_fact
INNER JOIN company_dim
ON job_postings_fact.company_id = company_dim.company_id
WHERE job_postings_fact.job_title_short = 'Data Analyst'
AND job_postings_fact.job_work_from_home = TRUE
AND job_postings_fact.job_no_degree_mention = TRUE
And job_postings_fact.salary_year_avg IS NOT NULL
GROUP BY company_dim.name
HAVING COUNT(*) >= 5
ORDER BY average_salary DESC
LIMIT 10;