-- Manager request: Which countries have the highest average yearly salary for remote Data Analyst
-- jobs? Only include postings with a listed yearly salary. Show the country and average salary.
-- Return the top 10.

SELECT job_country AS country,
ROUND(AVG(salary_year_avg), 0) AS average_salary
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
AND job_work_from_home = TRUE
AND salary_year_avg IS NOT NULL
GROUP BY  job_country
ORDER BY average_salary DESC
LIMIT 10;