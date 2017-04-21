DROP TABLE IF EXISTS accounts CASCADE;
CREATE TABLE accounts (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  username VARCHAR,
  email VARCHAR,
  password VARCHAR
);

DROP TABLE IF EXISTS right_swiped CASCADE;
CREATE TABLE right_swiped  (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  username VARCHAR,
  swiped_right_id INT references accounts(id)
);

DROP TABLE IF EXISTS left_swiped CASCADE;
CREATE TABLE left_swiped  (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  username VARCHAR,
  swiped_left_id INT references accounts(id)
);


INSERT INTO accounts(first_name, last_name, username, email, password) VALUES ('debrena', 'mcewen', 'teqnickels', 'teq@me.com', '123hello' );
INSERT INTO accounts(first_name, last_name, username, email, password) VALUES('Mary', 'Jo', 'mayjay','mj@them.com', '12345');
INSERT INTO accounts(first_name, last_name, username, email, password) VALUES('Joe', 'Jones','jjones', 'jj@you.com', '23435');

INSERT INTO right_swiped(first_name, last_name, username) VALUES('Kate', 'Jameson', 'kjay');
INSERT INTO right_swiped(first_name, last_name, username) VALUES('John', 'Doe', 'jdoe');
INSERT INTO right_swiped(first_name, last_name, username) VALUES('Kerry', 'Mack', 'kmack');

INSERT INTO left_swiped(first_name, last_name, username) VALUES('Kim', 'James', 'kjames');
INSERT INTO left_swiped(first_name, last_name, username) VALUES('Jay', 'Don', 'jdon');
INSERT INTO left_swiped(first_name, last_name, username) VALUES('Mary', 'Max', 'kmax');

UPDATE accounts SET username = 'single2mingle' WHERE username = 'Teqnickels';
DELETE FROM right_swiped WHERE first_name = 'John';
SELECT * FROM left_swiped LIMIT 2;
SELECT * FROM right_swiped ORDER BY id;
SELECT * FROM right_swiped JOIN left_swiped ON left_swiped.id = right_swiped.id;
