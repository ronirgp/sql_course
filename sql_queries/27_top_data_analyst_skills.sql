-- Query #27: Most requested Data Analyst skills
--
-- Manager's request:
-- Find the 10 most requested skills in Data Analyst job postings.
-- Show the skill name and number of job postings for each skill.

SELECT 
     skills_dim.skills AS skill_name,
     COUNT(*) AS number_of_jobs
FROM job_postings_fact
INNER JOIN skills_job_dim
     ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim
     ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_postings_fact.job_title_short = 'Data Analyst'
GROUP by skills_dim.skills
LIMIT 10;