DROP TABLE IF EXISTS music;

CREATE TABLE music (
  id SERIAL PRIMARY KEY,
  artist VARCHAR,
  album VARCHAR,
  songs VARCHAR,
  playlists VARCHAR,
  rating INTEGER
);

DROP TABLE IF EXISTS artists;

CREATE TABLE artists (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  genre VARCHAR
);

DROP TABLE IF EXISTS playlists;

CREATE TABLE playlists (
  id SERIAL PRIMARY KEY,
  title VARCHAR
);


INSERT INTO music ( artist, album, songs, playlists, rating ) VALUES ( 'Redman', 'WHUT? The Album', 'Hardcore', 'Hood Anthem', 8);
INSERT INTO music ( artist, album, songs, playlists, rating ) VALUES ( '2Pac', 'All Eyez On Me', 'Ambitionz Az a Ridah', 'Hood Anthem', 10 );
INSERT INTO music ( artist, album, songs, playlists, rating ) VALUES ( 'Too $hort', 'Blow the Whistle', 'Blow the Whistle', 'Hood Anthem', 10 );
INSERT INTO music ( artist, album, songs, playlists, rating ) VALUES ( 'Lady Gaga', 'The Fame Monster', 'Bad Romance', 'Fist Pump', 10 );
INSERT INTO music ( artist, album, songs, playlists, rating ) VALUES ( 'Spice Girls', 'Spiceworld', 'Spice Up Your Life', 'Bubblegum', 6 );
INSERT INTO music ( artist, album, songs, playlists, rating ) VALUES ( 'Kesha', 'Warrior', 'Tik Tok','Bubblegum', 6 );
INSERT INTO music ( artist, album, songs, playlists, rating ) VALUES ( 'H.E.R.', 'Volume1', 'Facts', 'Groove', 10);
INSERT INTO music ( artist, album, songs, playlists, rating ) VALUES ( 'Ledisi', 'Pieces of Me', 'Alright', 'Groove', 7);
INSERT INTO music ( artist, album, songs, playlists, rating ) VALUES ( 'Deangelo', 'Black Messiah', 'Aint That Easy', 'Groove', 9);
INSERT INTO music ( artist, album, songs, playlists, rating ) VALUES ( 'Nirvana', 'Nevermind', 'Teen Spirit', 'Emotude', 10);
INSERT INTO music ( artist, album, songs, playlists, rating ) VALUES ( 'Hiatus Kaiyote', 'Tawk Tomahawk', 'Molasses', 'Groove', 10);
INSERT INTO music ( artist, album, songs, playlists, rating ) VALUES ( 'Emily King', 'The Seven EP', 'Georgia', 'Groove', 10);
INSERT INTO music ( artist, album, songs, playlists, rating ) VALUES ( 'Esperanza Spalding', 'Radio Music Society', 'Cinnamon Tree', 'Funky', 10);
INSERT INTO music ( artist, album, songs, playlists, rating ) VALUES ( 'Roy Hargrove', 'Approaching Standards', 'Ruby My Dear', 'Groove', 10);
INSERT INTO music ( artist, album, songs, playlists, rating ) VALUES ( 'Cassandra Wilson', 'Blue Light Til Dawn', 'Come On In My Kitchen', 'Groove', 10);


INSERT INTO artists( name, genre ) VALUES ('Cassandra Wilson', 'jazz');
INSERT INTO artists( name, genre ) VALUES ('Roy Hargrove', 'jazz');
INSERT INTO artists( name, genre ) VALUES ('Esperanza Spalding', 'jazz');
INSERT INTO artists( name, genre ) VALUES ('Emily King', 'alternative');
INSERT INTO artists( name, genre ) VALUES ('Hiatus Kaiyote', 'alternative');
INSERT INTO artists( name, genre ) VALUES ('Nirvana', 'alternative');
INSERT INTO artists( name, genre ) VALUES ('Deangelo', 'r_b');
INSERT INTO artists( name, genre ) VALUES ('H.E.R.', 'r_b');
INSERT INTO artists( name, genre ) VALUES ('Kesha', 'pop');
INSERT INTO artists( name, genre ) VALUES ('Spice Girls', 'pop');
INSERT INTO artists( name, genre ) VALUES ('Lady Gaga', 'pop');
INSERT INTO artists( name, genre ) VALUES ('Too $hort', 'hipHop');
INSERT INTO artists( name, genre ) VALUES ('2Pac', 'hipHop');
INSERT INTO artists( name, genre ) VALUES ('Redman', 'hipHop');

INSERT INTO playlists (title) VALUES ('Groove');
INSERT INTO playlists (title) VALUES ('Funky');
INSERT INTO playlists (title) VALUES ('Bubblegum');
INSERT INTO playlists (title) VALUES ('Fist Pump');
INSERT INTO playlists (title) VALUES ('Hood Anthem');



SELECT artist FROM music Where playlists = 'Bubblegum';
SELECT artist FROM music WHERE playlists LIKE '%Hood%';
SELECT artist FROM music WHERE rating > 5;
SELECT * FROM music WHERE rating < 10;
SELECT songs FROM music WHERE playlists = 'Bubblegum' AND rating > 5 ;
SELECT AVG(rating) AS Average_Rating FROM music GROUP BY playlists HAVING COUNT (rating) > 5;
SELECT * FROM music WHERE playlists IN ('Groove', 'Hood Anthem', 'Bubblegum');
SELECT * FROM music WHERE playlists IN ('Groove', 'Hood Anthem', 'Bubblegum') LIMIT 5;
SELECT * FROM music WHERE playlists IN ('Groove', 'Hood Anthem', 'Bubblegum') ORDER BY rating;
SELECT * FROM music JOIN artists ON music.artist = artists.name
