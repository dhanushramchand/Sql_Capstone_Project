With high_paying_skills as (
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
    Limit 10
)

Select high_paying_skills.*,
       skills_dim.skills
From skills_job_dim
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
INNER JOIN high_paying_skills on high_paying_skills.job_id = skills_job_dim.job_id
order by high_paying_skills.salary DESC;
