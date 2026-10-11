-- “How many Data Analyst job postings are available in each country? Show the country and number of jobs,
-- with the countries having the most jobs first.”
SELECT
    job_country AS country,
    COUNT(*) AS number_of_jobs
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY job_country
ORDER BY number_of_jobs DESC
LIMIT 10;