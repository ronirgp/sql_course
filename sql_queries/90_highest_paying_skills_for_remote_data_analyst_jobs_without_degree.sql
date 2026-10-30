-- Question: Which 10 skills have the highest average yearly salary among remote Data Analyst jobs that -- do not mention a degree requirement?

SELECT skills_dim.skills AS skill_name,
ROUND(AVG(job_postings_fact.salary_year_avg), 0) AS average_salary
FROM job_postings_fact
INNER JOIN skills_job_dim
ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim
ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_postings_fact.job_title_short = 'Data Analyst'
AND job_postings_fact.job_work_from_home = TRUE
AND job_postings_fact.job_no_degree_mention = TRUE
AND job_postings_fact.salary_year_avg IS NOT NULL
GROUP BY skills_dim.skills 
HAVING COUNT(*) >= 10
ORDER BY average_salary DESC
LIMIT 10;
