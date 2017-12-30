CREATE SCHEMA development;
USE development;

CREATE TABLE developers(
	id 			INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name  VARCHAR(50) NOT NULL,
	last_name 	VARCHAR(50) NOT NULL,
	age 		INT,
	sex 		ENUM('female', 'male')
);

CREATE TABLE skills(
	id 					INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	branch_development 	VARCHAR(30) NOT NULL,
	skills_level 		VARCHAR(30) NOT NULL
);

CREATE TABLE projects(
	id 	 INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	name VARCHAR(50) NOT NULL,
	info VARCHAR(100)
);

CREATE TABLE companies(
	id	 INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	name VARCHAR(50) NOT NULL,
	info VARCHAR(100)
);

CREATE TABLE customers(
	id 			INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name 	VARCHAR(50) NOT NULL,
	last_name 	VARCHAR(50) NOT NULL,
	info 		VARCHAR(100)
);

CREATE TABLE developer_projects(
	developer_id INT NOT NULL,
	project_id	 INT NOT NULL,
	PRIMARY KEY(developer_id, project_id),
	FOREIGN KEY(developer_id) REFERENCES developers (id),
	FOREIGN KEY(project_id) REFERENCES projects (id)
);

CREATE TABLE developer_skills(
	developer_id INT NOT NULL,
	skill_id	 INT NOT NULL,
	PRIMARY KEY(developer_id, skill_id),
	FOREIGN KEY(developer_id) REFERENCES developers (id),
	FOREIGN KEY(skill_id) REFERENCES skills (id)
);

CREATE TABLE company_projects(
	company_id INT NOT NULL,
	project_id INT NOT NULL,
	PRIMARY KEY(company_id, project_id),
	FOREIGN KEY(company_id) REFERENCES companies (id),
	FOREIGN KEY(project_id) REFERENCES projects (id)
);

CREATE TABLE customer_projects(
	customer_id INT NOT NULL,
	project_id 	INT NOT NULL,
	PRIMARY KEY(customer_id, project_id),
	FOREIGN KEY(customer_id) REFERENCES customers (id),
	FOREIGN KEY(project_id) REFERENCES projects (id)
);

