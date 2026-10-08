-- Query #18: Companies with the most remote Data Analyst jobs
--
-- Manager's request:
-- "Which companies are posting the most remote Data Analyst jobs?
-- Show me the top 10 companies and the number of remote jobs."

SELECT
    company_dim.name AS company_name,
    COUNT(*) AS number_of_jobs
FROM job_postings_fact
INNER JOIN company_dim
    ON job_postings_fact.company_id = company_dim.company_id
WHERE job_postings_fact.job_title_short = 'Data Analyst'
  AND job_postings_fact.job_work_from_home = TRUE
GROUP BY company_dim.name
ORDER BY number_of_jobs DESC
LIMIT 10;