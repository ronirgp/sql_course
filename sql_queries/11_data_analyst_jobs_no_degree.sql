-- Query #11: Data Analyst jobs with no degree requirement
--
-- Manager's request:
-- "How many Data Analyst job postings do not mention
-- a degree requirement?"

SELECT
    job_no_degree_mention AS no_degree_required,
    COUNT(*) AS number_of_jobs
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY job_no_degree_mention
ORDER BY number_of_jobs DESC;