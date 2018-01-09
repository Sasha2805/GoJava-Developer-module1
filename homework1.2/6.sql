#6. Вычислить среднюю ЗП программистов в самом дешевом проекте.
USE development;

SELECT AVG(developers.salary) AS average_salary
FROM developers 

INNER JOIN developer_projects 
ON developers.id = developer_projects.developer_id

INNER JOIN projects 
ON developer_projects.project_id  = projects.id

WHERE projects.cost = (SELECT MIN(DISTINCT cost) FROM projects)
GROUP BY projects.name;
