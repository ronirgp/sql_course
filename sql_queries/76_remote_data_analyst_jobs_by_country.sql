-- Question: For each country, how many Data Analyst jobs offer remote work? Show the top 10 countries -- with the most remote opportunities.

SELECT job_country AS country_name,
COUNT(*) AS number_of_jobs
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
AND job_work_from_home = TRUE
GROUP BY job_country
ORDER BY number_of_jobs DESC
LIMIT 10;
