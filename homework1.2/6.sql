#6. Вычислить среднюю ЗП программистов в самом дешевом проекте.
USE development;

SELECT AVG(salary) AS average_salary
FROM developers, developer_projects
WHERE developers.id = developer_projects.developer_id 
AND project_id = (SELECT id 
			FROM projects 
			WHERE cost = (SELECT MIN(cost) AS min_project_cost 
			FROM projects));
