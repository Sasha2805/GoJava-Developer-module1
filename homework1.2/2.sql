# 2. Найти самый дорогой проект (исходя из salary всех разработчиков). 
USE development;

SELECT projects.name AS project_name, SUM(developers.salary) AS project_cost
FROM developers 

INNER JOIN developer_projects 
ON developers.id = developer_projects.developer_id

INNER JOIN projects 
ON developer_projects.project_id = projects.id

GROUP BY projects.name
ORDER BY SUM(developers.salary) DESC LIMIT 1;
