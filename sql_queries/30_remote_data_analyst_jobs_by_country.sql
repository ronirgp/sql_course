-- Query #30: Remote Data Analyst jobs by country

SELECT
    job_country AS country,
    COUNT(*) AS number_of_remote_jobs
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
  AND job_work_from_home = TRUE
GROUP BY job_country
ORDER BY number_of_remote_jobs DESC
LIMIT 10;