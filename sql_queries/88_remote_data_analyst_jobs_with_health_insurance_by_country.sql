-- Question: Which 10 countries have the most Data Analyst job postings that offer health insurance and -- remote work?  
 
 SELECT job_country AS country_name,
 COUNT(*) AS number_of_jobs
 FROM job_postings_fact
 WHERE job_title_short = 'Data Analyst'
 AND job_work_from_home = TRUE
 AND job_health_insurance = TRUE
 GROUP BY job_country
 ORDER BY number_of_jobs DESC
 LIMIT 10;