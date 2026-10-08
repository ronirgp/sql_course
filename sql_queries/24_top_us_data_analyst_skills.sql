-- Query #24: Top skills for Data Analyst jobs in the United States
--
-- Manager's request:
-- "Find the 10 most common skills required for Data Analyst jobs
-- in the United States. Show the skill and the number of job
-- postings requiring it."

SELECT
    skills_dim.skills AS skill,
    COUNT(*) AS number_of_jobs
FROM job_postings_fact
INNER JOIN skills_job_dim
    ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim
    ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_postings_fact.job_title_short = 'Data Analyst'
  AND job_postings_fact.job_country = 'United States'
GROUP BY skills_dim.skills
ORDER BY number_of_jobs DESC
LIMIT 10;