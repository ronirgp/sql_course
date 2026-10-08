-- Query #21: Data Analyst jobs by year
--
-- Manager's request:
-- "How many Data Analyst jobs were posted in each year?
-- Show me the year and the number of job postings,
-- starting with the most recent year."

SELECT
    EXTRACT(YEAR FROM job_posted_date) AS posting_year,
    COUNT(*) AS number_of_jobs
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY posting_year
ORDER BY posting_year DESC;