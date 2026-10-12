-- “How many Data Analyst job postings mention health insurance?
-- Show the number of jobs for each value of the health insurance indicator.”
SELECT job_health_insurance AS health_insurance,
COUNT(*) AS number_of_jobs
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY  job_health_insurance
ORDER BY number_of_jobs DESC;
