-- Manager request: Which job titles have the highest average yearly salary among remote job -- postings -- in the United States? Only include postings with a listed yearly salary. Show 
-- the job title and average salary. Return the top 10.

SELECT   job_title_short AS job_title,
ROUND(AVG(salary_year_avg), 0) AS average_salary
FROM job_postings_fact
WHERE  job_country = 'United States'
AND job_work_from_home = TRUE
AND salary_year_avg IS NOT NULL
GROUP BY job_title_short
ORDER BY average_salary
LIMIT 10;