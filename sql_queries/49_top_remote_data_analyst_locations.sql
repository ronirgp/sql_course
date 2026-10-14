-- “Which job locations have the most Data Analyst postings that allow remote work?
--  Show the location and number of postings. Return the top 10.”

SELECT job_location,
COUNT(*) AS number_of_jobs
FROM job_postings_fact 
WHERE job_title_short = 'Data Analyst'
AND job_work_from_home = TRUE
GROUP BY job_location
ORDER BY number_of_jobs DESC
LIMIT 10;
