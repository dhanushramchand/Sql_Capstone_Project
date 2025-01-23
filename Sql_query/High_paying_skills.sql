Select skills_dim.skills,
       Round(avg(salary_year_avg),0) as Avg_salary
From job_postings_fact
Inner join skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
Inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
where job_postings_fact.job_title_short = 'Data Analyst' AND
      salary_year_avg IS NOT NULL
Group By skills_dim.skills
order by Avg_salary DESC
limit 25;