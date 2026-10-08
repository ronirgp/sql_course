-- Query #22: Remote Data Analyst jobs by year
--
-- Manager's request:
-- "For each year, how many Data Analyst jobs were remote?
-- Show me the year and the number of remote Data Analyst
-- job postings, starting with the most recent year."

SELECT
    EXTRACT(YEAR FROM job_posted_date) AS posting_year,
    COUNT(*) AS number_of_remote_jobs
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
  AND job_work_from_home = TRUE
GROUP BY posting_year
ORDER BY posting_year DESC;