-- “How many Data Analyst job postings mention no degree requirement? Show the number of jobs for each -- value of the no-degree indicator.”

SELECT job_no_degree_mention AS no_degree_required,
COUNT(*) AS number_of_jobs
FROM job_postings_fact 
WHERE job_title_short = 'Data Analyst'
GROUP BY job_no_degree_mention
ORDER BY number_of_jobs DESC;