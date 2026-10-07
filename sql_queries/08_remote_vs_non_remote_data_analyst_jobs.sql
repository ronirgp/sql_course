-- Query #8: Remote vs. non-remote Data Analyst jobs
--
-- Manager's request:
-- "How many Data Analyst jobs are remote versus not remote?"

SELECT
    job_work_from_home AS remote,
    COUNT(*) AS number_of_jobs
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY job_work_from_home
ORDER BY number_of_jobs DESC;