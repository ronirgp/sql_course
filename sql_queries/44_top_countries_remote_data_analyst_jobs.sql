-- “Which countries have the most remote Data Analyst job postings? Show the country and the number of -- jobs, highest first. Return the top 10.”
SELECT job_country AS country,
COUNT(*) AS number_of_jobs
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
AND job_work_from_home = TRUE
GROUP BY job_country 
ORDER BY number_of_jobs DESC
LIMIT 10;

