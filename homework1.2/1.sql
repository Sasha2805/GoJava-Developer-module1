# Добавить разработчикам поле (salary - зарплата).
USE development;

ALTER TABLE developers ADD salary DECIMAL(10, 2);

CREATE TABLE developers_salary(
	developer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	salary DECIMAL(10, 2),
	FOREIGN KEY(developer_id) REFERENCES developers (id)
);

INSERT INTO developers_salary(developer_id, salary) 
VALUES
	(1, 4000),
	(2, 1000),
	(3, 3500),
	(4, 2500.80),
	(5, 3100);

UPDATE developers, developers_salary 
SET developers.salary = developers_salary.salary
WHERE developers.id = developers_salary.developer_id;

DROP TABLE developers_salary;