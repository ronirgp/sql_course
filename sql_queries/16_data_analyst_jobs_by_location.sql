-- Query #16: Data Analyst jobs by location
--
-- Manager's request:
-- "For Data Analyst jobs, show me the 10 locations
-- with the most job postings. Show the job location
-- and the number of jobs."

SELECT
    job_location,
    COUNT(*) AS number_of_jobs
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY job_location
ORDER BY number_of_jobs DESC
LIMIT 10;