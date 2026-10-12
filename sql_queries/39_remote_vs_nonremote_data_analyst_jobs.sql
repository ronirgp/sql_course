-- “How many Data Analyst job postings are available for remote work versus jobs that are not remote?”

SELECT job_work_from_home,
COUNT(*) AS number_of_jobs
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY job_work_from_home
ORDER BY number_of_jobs DESC;
 