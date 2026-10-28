-- Question: Which 10 skills are most common in Data Analyst jobs that offer health insurance?

SELECT skills_dim.skills AS skill_name,
COUNT(*) AS number_of_jobs
FROM job_postings_fact
INNER JOIN skills_job_dim
ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim
ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_postings_fact.job_title_short = 'Data Analyst'
AND job_postings_fact.job_health_insurance = TRUE
GROUP BY skills_dim.skills
ORDER BY  number_of_jobs DESC
LIMIT 10;