#5. Найти самый дешевый проект (исходя из cost всех проектов).
USE development;

SELECT MIN(DISTINCT cost) AS min_project_cost
FROM projects
 