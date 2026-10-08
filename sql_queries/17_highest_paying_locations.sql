-- Query #17: Highest-paying Data Analyst locations
--
-- Manager's request:
-- "For Data Analyst jobs with a listed yearly salary,
-- show the 10 job locations with the highest average salary.
-- Show the job location and average yearly salary."

SELECT
    job_location,
    ROUND(AVG(salary_year_avg), 0) AS average_salary
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
  AND salary_year_avg IS NOT NULL
GROUP BY job_location
ORDER BY average_salary DESC
LIMIT 10;