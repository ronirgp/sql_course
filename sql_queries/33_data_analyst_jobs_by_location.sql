-- Manager's request:
-- “For Data Analyst jobs, which 10 job locations have the most postings? 
-- Show the location and number of jobs,
-- with the busiest locations first.”

SELECT job_location,
COUNT(*) AS number_of_jobs
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY job_location
ORDER BY number_of_jobs DESC
LIMIT 10;