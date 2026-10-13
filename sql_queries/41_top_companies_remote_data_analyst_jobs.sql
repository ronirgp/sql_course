-- “Which companies have the most remote Data Analyst job postings? Show the company name and the -- --number of remote postings, with the highest number first. Return the top 10 companies.”

SELECT company_dim.name AS company,
COUNT(*) AS number_of_jobs
FROM job_postings_fact
INNER JOIN company_dim
ON job_postings_fact.company_id = company_dim.company_id
WHERE job_postings_fact.job_title_short = 'Data Analyst'
AND job_postings_fact.job_work_from_home = TRUE
GROUP BY company_dim.name
ORDER BY number_of_jobs DESC
LIMIT 10;