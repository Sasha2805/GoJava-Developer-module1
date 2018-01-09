# 3. Вычислить общую ЗП только Java разработчиков. 
USE development;

SELECT SUM(developers.salary) AS salary_java_developers
FROM developers 

INNER JOIN developer_skills 
ON developers.id = developer_skills.developer_id

INNER JOIN skills 
ON developer_skills.skill_id = skills.id

WHERE skills.branch_development = 'Java';