-- Query #12: Data Analyst jobs with health insurance
--
-- Manager's request:
-- "How many Data Analyst job postings offer health insurance?"

SELECT
    job_health_insurance AS health_insurance,
    COUNT(*) AS number_of_jobs
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY job_health_insurance
ORDER BY number_of_jobs DESC;