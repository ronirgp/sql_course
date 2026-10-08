-- Query #14: Highest-paying companies for Data Analysts
--
-- Manager's request:
-- "For Data Analyst jobs with a listed yearly salary,
-- what are the top 10 companies offering the highest
-- average salary? Show me the company name and
-- average yearly salary."

SELECT
    company_dim.name AS company_name,
    ROUND(AVG(job_postings_fact.salary_year_avg), 0) AS average_salary
FROM job_postings_fact
INNER JOIN company_dim
    ON job_postings_fact.company_id = company_dim.company_id
WHERE job_postings_fact.job_title_short = 'Data Analyst'
  AND job_postings_fact.salary_year_avg IS NOT NULL
GROUP BY company_dim.name
ORDER BY average_salary DESC
LIMIT 10;