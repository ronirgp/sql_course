-- Query #13: Remote Data Analyst jobs with health insurance
--
-- Manager's request:
-- "Which Data Analyst jobs offer both remote work and health insurance?
-- Give me the top 10 highest-paying positions."

SELECT
    job_title,
    salary_year_avg,
    job_location,
    job_country
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
  AND job_work_from_home = TRUE
  AND job_health_insurance = TRUE
  AND salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10;