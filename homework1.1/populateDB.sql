USE development;

INSERT INTO developers(id, first_name, last_name, age, sex)
VALUES 	
	(1, 'John', 'Smith', 25, 'male'),
	(2, 'Sarah', 'Jones', 22, 'female'),
	(3, 'Daniel', 'Brown', 25, 'male'),
	(4, 'Olivia', 'Evans', 25, 'female'),
	(5, 'Daniel', 'Smith', 25, 'male');

INSERT INTO skills(id, branch_development, skills_level)
VALUES 	
	(1, 'Java', 'Junior'),
	(2, 'Java', 'Middle'),
	(3, 'Java', 'Senior'),
	(4, 'C++', 'Junior'),
	(5, 'C++', 'Middle'),
	(6, 'C++', 'Senior'),
	(7, 'C#', 'Junior'),
	(8, 'C#', 'Middle'),
	(9, 'C#', 'Senior'),
	(10, 'JavaScript', 'Junior'),
	(11, 'JavaScript', 'Middle'),
	(12, 'JavaScript', 'Senior');

INSERT INTO projects(id, name, info)
VALUES 	
	(1, 'YouTube Analyzer', 'Application for YouTube channel analytics'),
	(2, 'Makeup', 'Online shop of cosmetics'),
	(3, 'Nike', 'Clothing catalog Nike'),
	(4, 'Ant Logistics', 'Transport logistics application'),
	(5, 'MX Player Pro', 'Powerful video player with hardware acceleration and subtitle support');

INSERT INTO companies(id, name, info)
VALUES 	
	(1, 'DataArt', 'Informatoin about DataArt...'),
	(2, 'Lucky Labs', 'Informatoin about Lucky Labs...'),
	(3, 'Symphony Solutions', 'Informatoin about Symphony Solutions...'),
	(4, 'Netpeak', 'Informatoin about Netpeak...');

INSERT INTO customers(id, first_name, last_name, info)
VALUES 	
	(1, 'Sharon', 'Tracey','Informatoin about Sharon Tracey...'),
	(2, 'Sarah', 'Brown','Informatoin about Sarah Brown...'),
	(3, 'Garry', 'Potter','Informatoin about Garry Potter...'),
	(4, 'Dean', 'Jones','Informatoin about Dean Jones...'),
	(5, 'Brian', 'Tracey','Informatoin about Brian Tracey...');

INSERT INTO developer_projects(developer_id, project_id)
VALUES 
	(1, 1),
	(1, 2),
	(2, 2),
	(2, 5),
	(3, 3),
	(4, 4),
	(5, 1),
	(5, 5);

INSERT INTO developer_skills(developer_id, skill_id)
VALUES 	
	(1, 1),
	(1, 5),
	(1, 10),
	(2, 8),
	(2, 12),
	(3, 3),
	(3, 12),
	(4, 7),
	(4, 9),
	(5, 5),
	(5, 11);

INSERT INTO company_projects(company_id, project_id)
VALUES
	(1, 5),
	(2, 3),
	(2, 4),
	(3, 5),
	(4, 1),
	(4, 2);

INSERT INTO customer_projects(customer_id, project_id)
VALUES
	(1, 5),
	(2, 3),
	(2, 4),
	(2, 5),
	(3, 1),
	(4, 2),
	(4, 4),
	(5, 3),
	(5, 5);
