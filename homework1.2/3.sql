# 3. Вычислить общую ЗП только Java разработчиков. 
USE development;

SELECT SUM(developers.salary) AS salary_java_developers
FROM developers, skills, developer_skills
WHERE (developers.id = developer_skills.developer_id AND skills.id = developer_skills.skill_id) 
AND developer_skills.skill_id IN (SELECT id FROM skills WHERE skills.branch_development = 'JAVA');