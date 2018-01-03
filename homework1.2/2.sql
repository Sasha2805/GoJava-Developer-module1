# 2. Найти самый дорогой проект (исходя из salary всех разработчиков). 
USE development;

SELECT projects.name AS project_name, SUM(developers.salary) AS project_cost
FROM developers, projects, developer_projects 
WHERE developers.id = developer_projects.developer_id AND projects.id = developer_projects.project_id
GROUP BY projects.name
ORDER BY SUM(developers.salary) DESC LIMIT 1;
