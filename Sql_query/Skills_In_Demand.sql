Select skills_dim.skills,
       count(job_postings_fact.job_id) as demand
From job_postings_fact
Inner join skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
Inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
where job_postings_fact.job_title_short = 'Data Analyst'
Group By skills_dim.skills
order by demand DESC
limit 5;