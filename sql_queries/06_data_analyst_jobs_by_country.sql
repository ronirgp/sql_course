-- Query #6: Data Analyst jobs by country
--
-- Manager's request:
-- "Which countries have the most Data Analyst job postings?
-- Give me the top 10 countries."

SELECT
    job_country AS country,
    COUNT(*) AS number_of_jobs
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY job_country
ORDER BY number_of_jobs DESC
LIMIT 10;