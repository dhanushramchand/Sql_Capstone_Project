Select job_id,
       job_title_short as job_roles,
       company_dim.name as company_name,
       job_country as location,
       job_posted_date,
       salary_year_avg as salary
From job_postings_fact
left join company_dim on job_postings_fact.company_id = company_dim.company_id
where job_country = 'United States' AND
      job_title_short = 'Data Analyst' AND
      salary_year_avg is not NULL
order by salary DESC
Limit 10;