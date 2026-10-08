-- Query #23: Average Data Analyst salary by year
--
-- Manager's request:
-- "For each year, what was the average yearly salary
-- for Data Analyst jobs? Show me the year and average
-- yearly salary, from newest to oldest."

SELECT
    EXTRACT(YEAR FROM job_posted_date) AS posting_year,
    ROUND(AVG(salary_year_avg), 0) AS average_salary
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
  AND salary_year_avg IS NOT NULL
GROUP BY posting_year
ORDER BY posting_year DESC;