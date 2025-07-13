DROP TABLE IF EXISTS material;
DROP TABLE IF EXISTS step;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS project_category;
DROP TABLE IF EXISTS project;

CREATE TABLE project(
	project_name VARCHAR(255) NOT NULL,
	estimated_hours INT,
	actual_hours INT,
	difficulty VARCHAR(10),
	notes VARCHAR(255),
	project_id INT AUTO_INCREMENT PRIMARY KEY 
);

CREATE TABLE project_category(
	project_id INT,
	category_id INT
);

CREATE TABLE category(
	category_name VARCHAR(26),
	category_id INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE step(
	step_text VARCHAR(255) NOT NULL,
	step_order INT NOT NULL,
	step_id INT AUTO_INCREMENT PRIMARY KEY,
    project_id INT,
	FOREIGN KEY (project_id) REFERENCES project(project_id)
);

CREATE TABLE material(
	material_name VARCHAR(255) NOT NULL,
	num_required INT,
	cost DECIMAL,
	material_id INT AUTO_INCREMENT PRIMARY KEY,
    project_id INT,
	FOREIGN KEY (project_id) REFERENCES project(project_id)
);