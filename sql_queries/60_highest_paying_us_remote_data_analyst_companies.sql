-- Manager request: Which US companies offer the highest average yearly salary for remote
-- Data Analyst jobs? Only include companies with at least 5 qualifying postings that have a -- listed yearly salary. Show the company name and average salary. Return the top 10.

SELECT company_dim.name AS company_name,
ROUND(AVG(job_postings_fact.salary_year_avg), 0) AS average_salary
FROM job_postings_fact
INNER JOIN company_dim
ON job_postings_fact.company_id = company_dim.company_id
WHERE job_postings_fact.job_title_short = 'Data Analyst'
AND job_postings_fact.job_country = 'United States'
AND job_postings_fact.salary_year_avg IS NOT NULL
GROUP BY company_dim.name
HAVING COUNT(*) >= 5
ORDER BY  average_salary DESC
LIMIT 10;
