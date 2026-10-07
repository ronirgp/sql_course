-- Query #3: Companies with the most Data Analyst jobs
--
-- Manager's request:
-- "Which companies have the most Data Analyst job postings?
-- Give me the top 10 companies."

SELECT
    company_dim.name AS company_name,
    COUNT(*) AS number_of_jobs
FROM job_postings_fact
LEFT JOIN company_dim
    ON job_postings_fact.company_id = company_dim.company_id
WHERE job_title_short = 'Data Analyst'
GROUP BY company_dim.name
ORDER BY number_of_jobs DESC
LIMIT 10;