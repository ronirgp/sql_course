-- Query #10: Data Analyst jobs by schedule type
--
-- Manager's request:
-- "What are the most common job schedule types
-- for Data Analyst positions?"

SELECT
    job_schedule_type AS schedule_type,
    COUNT(*) AS number_of_jobs
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY job_schedule_type
ORDER BY number_of_jobs DESC
LIMIT 10;