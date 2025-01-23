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
order by high_paying_skills.salary DESC




/* For later use....
[
  {
    "job_id": 229253,
    "job_roles": "Data Analyst",
    "company_name": "Torc Robotics",
    "location": "United States",
    "job_posted_date": "2023-04-21 08:01:55",
    "salary": "375000.0",
    "skills": "sql"
  },
  {
    "job_id": 229253,
    "job_roles": "Data Analyst",
    "company_name": "Torc Robotics",
    "location": "United States",
    "job_posted_date": "2023-04-21 08:01:55",
    "salary": "375000.0",
    "skills": "python"
  },
  {
    "job_id": 229253,
    "job_roles": "Data Analyst",
    "company_name": "Torc Robotics",
    "location": "United States",
    "job_posted_date": "2023-04-21 08:01:55",
    "salary": "375000.0",
    "skills": "r"
  },
  {
    "job_id": 229253,
    "job_roles": "Data Analyst",
    "company_name": "Torc Robotics",
    "location": "United States",
    "job_posted_date": "2023-04-21 08:01:55",
    "salary": "375000.0",
    "skills": "sas"
  },
  {
    "job_id": 229253,
    "job_roles": "Data Analyst",
    "company_name": "Torc Robotics",
    "location": "United States",
    "job_posted_date": "2023-04-21 08:01:55",
    "salary": "375000.0",
    "skills": "matlab"
  },
  {
    "job_id": 229253,
    "job_roles": "Data Analyst",
    "company_name": "Torc Robotics",
    "location": "United States",
    "job_posted_date": "2023-04-21 08:01:55",
    "salary": "375000.0",
    "skills": "spark"
  },
  {
    "job_id": 229253,
    "job_roles": "Data Analyst",
    "company_name": "Torc Robotics",
    "location": "United States",
    "job_posted_date": "2023-04-21 08:01:55",
    "salary": "375000.0",
    "skills": "airflow"
  },
  {
    "job_id": 229253,
    "job_roles": "Data Analyst",
    "company_name": "Torc Robotics",
    "location": "United States",
    "job_posted_date": "2023-04-21 08:01:55",
    "salary": "375000.0",
    "skills": "excel"
  },
  {
    "job_id": 229253,
    "job_roles": "Data Analyst",
    "company_name": "Torc Robotics",
    "location": "United States",
    "job_posted_date": "2023-04-21 08:01:55",
    "salary": "375000.0",
    "skills": "tableau"
  },
  {
    "job_id": 229253,
    "job_roles": "Data Analyst",
    "company_name": "Torc Robotics",
    "location": "United States",
    "job_posted_date": "2023-04-21 08:01:55",
    "salary": "375000.0",
    "skills": "power bi"
  },
  {
    "job_id": 229253,
    "job_roles": "Data Analyst",
    "company_name": "Torc Robotics",
    "location": "United States",
    "job_posted_date": "2023-04-21 08:01:55",
    "salary": "375000.0",
    "skills": "sas"
  },
  {
    "job_id": 641501,
    "job_roles": "Data Analyst",
    "company_name": "Citigroup, Inc",
    "location": "United States",
    "job_posted_date": "2023-07-03 11:30:01",
    "salary": "375000.0",
    "skills": "excel"
  },
  {
    "job_id": 641501,
    "job_roles": "Data Analyst",
    "company_name": "Citigroup, Inc",
    "location": "United States",
    "job_posted_date": "2023-07-03 11:30:01",
    "salary": "375000.0",
    "skills": "word"
  },
  {
    "job_id": 1110602,
    "job_roles": "Data Analyst",
    "company_name": "Illuminate Mission Solutions",
    "location": "United States",
    "job_posted_date": "2023-08-18 07:00:22",
    "salary": "375000.0",
    "skills": "python"
  },
  {
    "job_id": 1110602,
    "job_roles": "Data Analyst",
    "company_name": "Illuminate Mission Solutions",
    "location": "United States",
    "job_posted_date": "2023-08-18 07:00:22",
    "salary": "375000.0",
    "skills": "r"
  },
  {
    "job_id": 1110602,
    "job_roles": "Data Analyst",
    "company_name": "Illuminate Mission Solutions",
    "location": "United States",
    "job_posted_date": "2023-08-18 07:00:22",
    "salary": "375000.0",
    "skills": "vba"
  },
  {
    "job_id": 1110602,
    "job_roles": "Data Analyst",
    "company_name": "Illuminate Mission Solutions",
    "location": "United States",
    "job_posted_date": "2023-08-18 07:00:22",
    "salary": "375000.0",
    "skills": "excel"
  },
  {
    "job_id": 1110602,
    "job_roles": "Data Analyst",
    "company_name": "Illuminate Mission Solutions",
    "location": "United States",
    "job_posted_date": "2023-08-18 07:00:22",
    "salary": "375000.0",
    "skills": "tableau"
  },
  {
    "job_id": 1059665,
    "job_roles": "Data Analyst",
    "company_name": "Anthropic",
    "location": "United States",
    "job_posted_date": "2023-06-22 07:00:59",
    "salary": "350000.0",
    "skills": "sql"
  },
  {
    "job_id": 1059665,
    "job_roles": "Data Analyst",
    "company_name": "Anthropic",
    "location": "United States",
    "job_posted_date": "2023-06-22 07:00:59",
    "salary": "350000.0",
    "skills": "python"
  },
  {
    "job_id": 101757,
    "job_roles": "Data Analyst",
    "company_name": "Care.com",
    "location": "United States",
    "job_posted_date": "2023-10-23 05:01:05",
    "salary": "350000.0",
    "skills": "sql"
  },
  {
    "job_id": 101757,
    "job_roles": "Data Analyst",
    "company_name": "Care.com",
    "location": "United States",
    "job_posted_date": "2023-10-23 05:01:05",
    "salary": "350000.0",
    "skills": "python"
  },
  {
    "job_id": 101757,
    "job_roles": "Data Analyst",
    "company_name": "Care.com",
    "location": "United States",
    "job_posted_date": "2023-10-23 05:01:05",
    "salary": "350000.0",
    "skills": "r"
  },
  {
    "job_id": 101757,
    "job_roles": "Data Analyst",
    "company_name": "Care.com",
    "location": "United States",
    "job_posted_date": "2023-10-23 05:01:05",
    "salary": "350000.0",
    "skills": "bigquery"
  },
  {
    "job_id": 101757,
    "job_roles": "Data Analyst",
    "company_name": "Care.com",
    "location": "United States",
    "job_posted_date": "2023-10-23 05:01:05",
    "salary": "350000.0",
    "skills": "snowflake"
  },
  {
    "job_id": 101757,
    "job_roles": "Data Analyst",
    "company_name": "Care.com",
    "location": "United States",
    "job_posted_date": "2023-10-23 05:01:05",
    "salary": "350000.0",
    "skills": "tableau"
  },
  {
    "job_id": 101757,
    "job_roles": "Data Analyst",
    "company_name": "Care.com",
    "location": "United States",
    "job_posted_date": "2023-10-23 05:01:05",
    "salary": "350000.0",
    "skills": "power bi"
  },
  {
    "job_id": 101757,
    "job_roles": "Data Analyst",
    "company_name": "Care.com",
    "location": "United States",
    "job_posted_date": "2023-10-23 05:01:05",
    "salary": "350000.0",
    "skills": "looker"
  },
  {
    "job_id": 894135,
    "job_roles": "Data Analyst",
    "company_name": "OpenAI",
    "location": "United States",
    "job_posted_date": "2023-04-19 18:04:21",
    "salary": "285000.0",
    "skills": "github"
  },
  {
    "job_id": 552322,
    "job_roles": "Data Analyst",
    "company_name": "AT&T",
    "location": "United States",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary": "255829.5",
    "skills": "sql"
  },
  {
    "job_id": 552322,
    "job_roles": "Data Analyst",
    "company_name": "AT&T",
    "location": "United States",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary": "255829.5",
    "skills": "python"
  },
  {
    "job_id": 552322,
    "job_roles": "Data Analyst",
    "company_name": "AT&T",
    "location": "United States",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary": "255829.5",
    "skills": "r"
  },
  {
    "job_id": 552322,
    "job_roles": "Data Analyst",
    "company_name": "AT&T",
    "location": "United States",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary": "255829.5",
    "skills": "azure"
  },
  {
    "job_id": 552322,
    "job_roles": "Data Analyst",
    "company_name": "AT&T",
    "location": "United States",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary": "255829.5",
    "skills": "databricks"
  },
  {
    "job_id": 552322,
    "job_roles": "Data Analyst",
    "company_name": "AT&T",
    "location": "United States",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary": "255829.5",
    "skills": "aws"
  },
  {
    "job_id": 552322,
    "job_roles": "Data Analyst",
    "company_name": "AT&T",
    "location": "United States",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary": "255829.5",
    "skills": "pandas"
  },
  {
    "job_id": 552322,
    "job_roles": "Data Analyst",
    "company_name": "AT&T",
    "location": "United States",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary": "255829.5",
    "skills": "pyspark"
  },
  {
    "job_id": 552322,
    "job_roles": "Data Analyst",
    "company_name": "AT&T",
    "location": "United States",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary": "255829.5",
    "skills": "jupyter"
  },
  {
    "job_id": 552322,
    "job_roles": "Data Analyst",
    "company_name": "AT&T",
    "location": "United States",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary": "255829.5",
    "skills": "excel"
  },
  {
    "job_id": 552322,
    "job_roles": "Data Analyst",
    "company_name": "AT&T",
    "location": "United States",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary": "255829.5",
    "skills": "tableau"
  },
  {
    "job_id": 552322,
    "job_roles": "Data Analyst",
    "company_name": "AT&T",
    "location": "United States",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary": "255829.5",
    "skills": "power bi"
  },
  {
    "job_id": 552322,
    "job_roles": "Data Analyst",
    "company_name": "AT&T",
    "location": "United States",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary": "255829.5",
    "skills": "powerpoint"
  },
  {
    "job_id": 285766,
    "job_roles": "Data Analyst",
    "company_name": "Google",
    "location": "United States",
    "job_posted_date": "2023-07-28 13:01:20",
    "salary": "254000.0",
    "skills": "gcp"
  }
]
*/