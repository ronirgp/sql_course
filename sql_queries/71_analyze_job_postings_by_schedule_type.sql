-- Manager request: Which job schedule types have the most Data Analyst job postings? Show the schedule -- type and number of postings. Return the top 10.

SELECT job_schedule_type AS schedule,
COUNT(*) AS number_of_jobs
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY job_schedule_type
ORDER BY number_of_jobs DESC
LIMIT 10;