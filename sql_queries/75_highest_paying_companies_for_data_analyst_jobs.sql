-- Question: Which 10 companies offer the highest average yearly salary for Data Analyst jobs?

SELECT company_dim.name AS company_dim,
ROUND(AVG(salary_year_avg), 0) AS average_salary
FROM job_postings_fact
INNER JOIN company_dim 
ON job_postings_fact.company_id = company_dim.company_id
WHERE job_postings_fact.job_title_short = 'Data Analyst'
AND job_postings_fact.salary_year_avg IS NOT NULL
GROUP BY company_dim.name
HAVING COUNT(*) >= 10
ORDER BY average_salary DESC
LIMIT 10;
