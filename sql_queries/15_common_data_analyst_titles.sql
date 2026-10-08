-- Query #15: Most common Data Analyst job titles
--
-- Manager's request:
-- "Show me the 10 most common job titles among
-- Data Analyst postings. Show the job title and
-- the number of job postings."

SELECT
    job_title AS job_title,
    COUNT(*) AS number_of_jobs
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY job_title
ORDER BY number_of_jobs DESC
LIMIT 10;