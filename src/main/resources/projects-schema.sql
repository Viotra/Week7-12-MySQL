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



INSERT INTO project (project_name, estimated_hours,actual_hours, difficulty, notes)
VALUES ('Test 2', 4, 2, 2, 'This test is number 2');
INSERT INTO material (material_name, num_required, cost, project_id)
VALUES ('tape', 1, 2.50, 1);
INSERT INTO material (material_name, num_required, cost, project_id)
VALUES ('nails', 200, 4.00, 1);
INSERT INTO step (step_text, step_order, project_id)
VALUES ('take the tape and wrap it around stuff', 1, 1);
INSERT INTO step (step_text, step_order, project_id)
VALUES ('sit and watch things', 2, 1);
INSERT INTO step (step_text, step_order, project_id)
VALUES ('use nails to make a pile', 1, 1);
INSERT INTO category (category_id, category_name)
VALUES (1, 'adhesives');
INSERT INTO category (category_id, category_name)
VALUES (2, 'hardware');
INSERT INTO project_category (project_id, category_id)
VALUES (1, 1);
INSERT INTO project_category (project_id, category_id)
VALUES (2, 1);