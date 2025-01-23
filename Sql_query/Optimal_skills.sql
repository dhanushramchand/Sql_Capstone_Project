Select skills_dim.skills,
       Count(job_postings_fact.job_id) as demand_count,
       Round(Avg(job_postings_fact.salary_year_avg),0) as salary
From job_postings_fact
Inner join skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
Inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
where job_title_short = 'Data Analyst' AND
      job_country = 'United States' AND
      salary_year_avg IS NOT NULL 
Group by skills_dim.skills
having Count(job_postings_fact.job_id) > 10
Order by salary DESC,demand_count DESC
Limit 25;
