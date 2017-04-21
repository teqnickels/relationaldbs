-- - [ ]  INSERT
--   - [ ]  UPDATE
--   - [ ]  DELETE
--   - [ ]  WHERE
--   - [ ]  LIMIT
--   - [ ]  ORDER BY
--   - [ ] JOIN

DROP TABLE IF EXISTS accounts CASCADE;
CREATE TABLE accounts (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  username VARCHAR,
  email VARCHAR,
  password VARCHAR
);

DROP TABLE IF EXISTS followers CASCADE;
CREATE TABLE followers (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  username VARCHAR,
  followers_id INT references accounts(id)
);

DROP TABLE IF EXISTS you_follow CASCADE;
CREATE TABLE you_follow (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  username VARCHAR,
  you_follow_id INT references accounts(id)

);

DROP TABLE IF EXISTS timeline_posts CASCADE;
CREATE TABLE timeline_posts (
  posters_id SERIAL PRIMARY KEY,
  content TEXT,
  timeline_posts_id INT references you_follow(id)
);

INSERT INTO accounts(first_name, last_name, username, email, password) VALUES ('debrena', 'mcewen', 'teqnickels', 'teq@me.com', '123hello' );
INSERT INTO accounts(first_name, last_name, username, email, password) VALUES('Mary', 'Jo', 'mayjay','mj@them.com', '12345');
INSERT INTO accounts(first_name, last_name, username, email, password) VALUES('Joe', 'Jones','jjones', 'jj@you.com', '23435');

INSERT INTO followers(first_name, last_name, username) VALUES('Kate', 'Jameson', 'kjay');
INSERT INTO followers(first_name, last_name, username) VALUES('John', 'Doe', 'jdoe');
INSERT INTO followers(first_name, last_name, username) VALUES('Kerry', 'Mack', 'kmack');

INSERT INTO you_follow(first_name, last_name, username) VALUES('Missy', 'Elliot', 'misselliot');
INSERT INTO you_follow(first_name, last_name, username) VALUES('Jacky', 'Wack', 'jackwack');
INSERT INTO you_follow(first_name, last_name, username) VALUES('Larry', 'Bird', 'lbird');

INSERT INTO timeline_posts(content) VALUES('Took the pup to the beach today. YAAAAY beach day!');
INSERT INTO timeline_posts(content) VALUES('Gym-Flow!');
INSERT INTO timeline_posts(content) VALUES('Graduation in 10 weeks!!');

UPDATE timeline_posts SET content = 'I hate the gym' WHERE content = 'Gym-Flow';
DELETE FROM timeline_posts WHERE content = 'Graduation in 10 weeks!!';
SELECT * FROM followers LIMIT 2;
SELECT * FROM timeline_posts ORDER BY timeline_posts_id;
SELECT * FROM timeline_posts JOIN followers ON timeline_posts.timeline_posts_id = followers.id;
