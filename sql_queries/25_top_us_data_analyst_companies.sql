-- “Find the top 10 companies with the most Data Analyst jobs in the United States.
--  Show the company name and number of job postings.”


SELECT
    company_dim.name AS company_name,
    job_country AS country,
    COUNT(*) AS number_of_jobs
FROM job_postings_fact
INNER JOIN company_dim
    ON job_postings_fact.company_id = company_dim.company_id
WHERE job_postings_fact.job_title_short = 'Data Analyst'
  AND job_country = 'United States'
GROUP BY company_dim.name, job_country
ORDER BY number_of_jobs DESC
LIMIT 10;