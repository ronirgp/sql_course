-- Query #2: Remote Data Analyst jobs
--
-- Manager's request:
-- "Give me the 10 most common job schedule types
-- among remote Data Analyst jobs."

SELECT
    job_schedule_type,
    COUNT(*) AS number_of_jobs
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
  AND job_work_from_home = TRUE
GROUP BY job_schedule_type
ORDER BY number_of_jobs DESC
LIMIT 10;