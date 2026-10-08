-- Query #20: Highest-paying companies with enough job postings
--
-- Manager's request:
-- "For Data Analyst jobs with a listed yearly salary,
-- show the 10 companies with the highest average salary.
-- Only include companies with at least 10 Data Analyst job postings.
-- Show the company name, average yearly salary, and number of jobs."

SELECT
    company_dim.name AS company_name,
    ROUND(AVG(job_postings_fact.salary_year_avg), 0) AS average_salary,
    COUNT(*) AS number_of_jobs
FROM job_postings_fact
INNER JOIN company_dim
    ON job_postings_fact.company_id = company_dim.company_id
WHERE job_postings_fact.job_title_short = 'Data Analyst'
  AND job_postings_fact.salary_year_avg IS NOT NULL
GROUP BY company_dim.name
HAVING COUNT(*) >= 10
ORDER BY average_salary DESC
LIMIT 10;