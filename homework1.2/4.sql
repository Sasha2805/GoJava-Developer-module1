#4. Добавить поле (cost - стоимость) в таблицу Projects.
USE development;

ALTER TABLE projects ADD cost DECIMAL(10, 2);

CREATE TABLE projects_cost(
	project_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	cost DECIMAL(10, 2),
	FOREIGN KEY(project_id) REFERENCES projects (id)
);

INSERT INTO projects_cost(project_id, cost) 
VALUES
	(1, 40000),
	(2, 15500),
	(3, 38600),
	(4, 25050.80),
	(5, 73990);

UPDATE projects, projects_cost 
SET projects.cost = projects_cost.cost
WHERE projects.id = projects_cost.project_id;

DROP TABLE projects_cost;