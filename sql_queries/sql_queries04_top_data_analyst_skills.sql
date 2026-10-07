-- Query #4: Most in-demand skills for Data Analysts
--
-- Manager's request:
-- "Which skills are requested most often in Data Analyst
-- job postings? Give me the top 10 skills."

SELECT
    skills_dim.skills AS skill,
    COUNT(*) AS number_of_jobs
FROM job_postings_fact
INNER JOIN skills_job_dim
    ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim
    ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_postings_fact.job_title_short = 'Data Analyst'
GROUP BY skills_dim.skills
ORDER BY number_of_jobs DESC
LIMIT 10;