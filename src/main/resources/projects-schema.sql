DROP TABLE IF EXISTS project_category;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS step;
DROP TABLE IF EXISTS material;
DROP TABLE IF EXISTS project;

CREATE TABLE project (
  project_id INT AUTO_INCREMENT NOT NULL,
  project_name VARCHAR(128) NOT NULL,
  estimated_hours DECIMAL(7,2),
  actual_hours DECIMAL(7,2),
  difficulty INT,
  notes TEXT,
  PRIMARY KEY (project_id)
);

CREATE TABLE material (
  material_id INT AUTO_INCREMENT NOT NULL,
  project_id INT NOT NULL,
  material_name VARCHAR(128) NOT NULL,
  num_required INT,
  cost DECIMAL(7,2),
  PRIMARY KEY (material_id),
  FOREIGN KEY (project_id) REFERENCES project (project_id) ON DELETE CASCADE
);

CREATE TABLE step (
  step_id INT AUTO_INCREMENT NOT NULL,
  project_id INT NOT NULL,
  step_text TEXT NOT NULL,
  step_order INT NOT NULL,
  PRIMARY KEY (step_id),
  FOREIGN KEY (project_id) REFERENCES project (project_id) ON DELETE CASCADE
);

CREATE TABLE category (
  category_id INT AUTO_INCREMENT NOT NULL,
  category_name VARCHAR(128) NOT NULL,
  PRIMARY KEY (category_id)  
);

CREATE TABLE project_category (
  project_id INT NOT NULL,
  category_id INT NOT NULL,
  FOREIGN KEY (project_id) REFERENCES project (project_id) ON DELETE CASCADE,
  FOREIGN KEY (category_id) REFERENCES category (category_id) ON DELETE CASCADE,
  UNIQUE KEY (project_id, category_id)
);

INSERT INTO project (project_name, estimated_hours,actual_hours, difficulty, notes)
VALUES ('Test 1', 4, 2, 2, 'This test is number 1'),
('Test 2', 5, 2, 3, 'This test is number 2');
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