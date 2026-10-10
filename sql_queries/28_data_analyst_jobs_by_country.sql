-- Manager's request:
-- “Which countries have the most Data Analyst job postings? Show the country and the number of jobs, ranked from highest to lowest.
-- Give me the top 10.”
SELECT  
    job_country AS country,
    COUNT(*) AS number_of_jobs
FROM  job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY job_country
ORDER BY number_of_jobs DESC
LIMIT 10;