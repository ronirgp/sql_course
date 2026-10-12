-- “What is the average yearly salary for remote Data Analyst jobs in the United States? Show the --average salary. Include only jobs with a listed yearly salary.”

SELECT
    ROUND(AVG(salary_year_avg), 0) AS average_yearly_salary
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
  AND job_country = 'United States'
  AND job_work_from_home = TRUE
  AND salary_year_avg IS NOT NULL;