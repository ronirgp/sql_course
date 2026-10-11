-- “Find the 10 companies with the most Data Analyst job postings. Show the company name and number of jobs.”
SELECT 
     company_dim.name AS company_name,
COUNT(*) AS number_of_jobs
FROM job_postings_fact 
INNER JOIN company_dim
ON job_postings_fact.company_id = company_dim.company_id 
WHERE job_postings_fact.job_title_short = 'Data Analyst'
GROUP BY company_dim.name
ORDER BY number_of_jobs DESC
LIMIT 10;