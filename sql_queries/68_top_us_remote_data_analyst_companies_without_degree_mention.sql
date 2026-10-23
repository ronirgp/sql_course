-- Manager request: Which companies have the most remote Data Analyst job postings in the United States -- that do not mention a degree requirement? Show the company name and number of postings. Return the
-- top 10.

SELECT company_dim.name AS company_name,
COUNT(*) AS number_of_jobs
FROM job_postings_fact
INNER JOIN company_dim
ON job_postings_fact.company_id = company_dim.company_id
WHERE job_title_short = 'Data Analyst'
AND job_postings_fact.job_country = 'United States'
AND job_postings_fact.job_work_from_home = TRUE
AND job_postings_fact.job_no_degree_mention = TRUE
GROUP BY company_dim.name
ORDER BY number_of_jobs DESC
LIMIT 10;


