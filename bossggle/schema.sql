-- List all words guessed
-- Count all correct words guessed
-- Count all incorrect words guessed
-- List all words guessed and their scores
-- Get sum of scores for all words guessed
-- Show 10 most recently guessed words


DROP TABLE IF EXISTS guessed;
CREATE TABLE guessed(
  count SERIAL,
  word VARCHAR,
  points INTEGER
);

DROP TABLE IF EXISTS guessed_wrong;
CREATE TABLE guessed_wrong(
  word VARCHAR,
  points INTEGER

);

DROP TABLE IF EXISTS guessed_correct;
CREATE TABLE guessed_correct(
  word VARCHAR,
  points INTEGER
);

INSERT INTO guessed(word, points) VALUES ('foo', 10);
INSERT INTO guessed(word, points) VALUES ('boo', 10);
INSERT INTO guessed(word, points) VALUES ('woo', 10);
INSERT INTO guessed(word, points) VALUES ('doo', 10);
INSERT INTO guessed(word, points) VALUES ('goo', 10);
INSERT INTO guessed(word, points) VALUES ('too', 10);
INSERT INTO guessed(word, points) VALUES ('yoo', 10);
INSERT INTO guessed(word, points) VALUES ('moo', 10);
INSERT INTO guessed(word, points) VALUES ('qoo', 5);
INSERT INTO guessed(word, points) VALUES ('loo', 5);
INSERT INTO guessed(word, points) VALUES ('ape', 5);
INSERT INTO guessed(word, points) VALUES ('love', 5);
INSERT INTO guessed(word, points) VALUES ('red', 5);
INSERT INTO guessed(word, points) VALUES ('blue', 5);
INSERT INTO guessed(word, points) VALUES ('that', 5);
INSERT INTO guessed(word, points) VALUES ('what', 5);
INSERT INTO guessed(word, points) VALUES ('rat', 5);
INSERT INTO guessed(word, points) VALUES ('cat', 5);
INSERT INTO guessed(word, points) VALUES ('bot', 5);
INSERT INTO guessed(word, points) VALUES ('mat', 5);
INSERT INTO guessed(word, points) VALUES ('bat', 0);
INSERT INTO guessed(word, points) VALUES ('top', 0);
INSERT INTO guessed(word, points) VALUES ('ram', 0);
INSERT INTO guessed(word, points) VALUES ('map', 0);
INSERT INTO guessed(word, points) VALUES ('tan', 0);
INSERT INTO guessed(word, points) VALUES ('gnat', 0);
INSERT INTO guessed(word, points) VALUES ('pot', 0);
INSERT INTO guessed(word, points) VALUES ('fat', 0);

INSERT INTO guessed_wrong VALUES ('bat', 0);
INSERT INTO guessed_wrong VALUES ('top', 0);
INSERT INTO guessed_wrong VALUES ('ram', 0);
INSERT INTO guessed_wrong VALUES ('map', 0);
INSERT INTO guessed_wrong VALUES ('tan', 0);
INSERT INTO guessed_wrong VALUES ('gnat', 0);
INSERT INTO guessed_wrong VALUES ('pot', 0);
INSERT INTO guessed_wrong VALUES ('fat', 0);

INSERT INTO guessed_correct VALUES ('foo', 10);
INSERT INTO guessed_correct VALUES ('boo', 10);
INSERT INTO guessed_correct VALUES ('woo', 10);
INSERT INTO guessed_correct VALUES ('doo', 10);
INSERT INTO guessed_correct VALUES ('goo', 10);
INSERT INTO guessed_correct VALUES ('too', 10);
INSERT INTO guessed_correct VALUES ('yoo', 10);
INSERT INTO guessed_correct VALUES ('moo', 10);
INSERT INTO guessed_correct VALUES ('qoo', 10);
INSERT INTO guessed_correct VALUES ('loo', 10);
INSERT INTO guessed_correct VALUES ('ape', 10);
INSERT INTO guessed_correct VALUES ('love', 10);
INSERT INTO guessed_correct VALUES ('red', 10);
INSERT INTO guessed_correct VALUES ('blue', 10);
INSERT INTO guessed_correct VALUES ('that', 10);
INSERT INTO guessed_correct VALUES ('what', 10);
INSERT INTO guessed_correct VALUES ('rat', 10);
INSERT INTO guessed_correct VALUES ('cat', 10);
INSERT INTO guessed_correct VALUES ('bot', 10);
INSERT INTO guessed_correct VALUES ('mat', 10);


SELECT word FROM guessed;
SELECT word FROM guessed LIMIT 10;
SELECT SUM(points) FROM guessed;
SELECT * FROM guessed_wrong;
SELECT * FROM guessed_correct;
SELECT * FROM guessed;
