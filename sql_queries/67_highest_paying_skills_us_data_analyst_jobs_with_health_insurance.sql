-- Manager request: Which skills have the highest average yearly salary in US Data Analyst job postings -- that offer health insurance? Only include postings with a listed yearly salary. Show the skill name -- and average salary. Return the top 10.

SELECT skills_dim.skills AS skills_name,
ROUND(AVG(job_postings_fact.salary_year_avg), 0) AS average_salary
FROM job_postings_fact 
INNER JOIN skills_job_dim
ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim
ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_postings_fact.job_country = 'United States'
AND job_postings_fact.job_title_short = 'Data Analyst'
AND job_postings_fact.job_health_insurance = TRUE
AND job_postings_fact.salary_year_avg IS NOT  NULL
GROUP BY skills_dim.skills
ORDER BY average_salary DESC
LIMIT 10;