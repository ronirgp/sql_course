-- Query #26: Highest-paying Data Analyst jobs in the United States
--
-- Manager's request:
-- "Find the 10 highest-paying Data Analyst jobs in the United States.
-- Show the job title, company name, yearly salary, and job location."

SELECT
    job_postings_fact.job_title,
    company_dim.name AS company_name,
    job_postings_fact.salary_year_avg,
    job_postings_fact.job_location
FROM job_postings_fact
INNER JOIN company_dim
    ON job_postings_fact.company_id = company_dim.company_id
WHERE job_postings_fact.job_title_short = 'Data Analyst'
  AND job_postings_fact.job_country = 'United States'
  AND job_postings_fact.salary_year_avg IS NOT NULL
ORDER BY job_postings_fact.salary_year_avg DESC
LIMIT 10;