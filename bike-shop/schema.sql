DROP TABLE IF EXISTS bikes;

CREATE TABLE bikes (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  price DECIMAL,
  frame_id INTEGER,
  rings_front INTEGER DEFAULT 3,
  rings_back INTEGER DEFAULT 7,
  brakes_front BOOLEAN DEFAULT true,
  brakes_back BOOLEAN DEFAULT true
);

DROP TABLE IF EXISTS frames;

CREATE TABLE frames (
  id SERIAL PRIMARY KEY,
  color VARCHAR DEFAULT 'black',
  size INTEGER DEFAULT 55,
  style VARCHAR DEFAULT 'street'
);

DROP TABLE IF EXISTS tires;

CREATE TABLE tires (
  id SERIAL PRIMARY KEY,
  diameter INTEGER DEFAULT 22,
  type VARCHAR DEFAULT 'street'
);

DROP TABLE IF EXISTS bike_frame;

CREATE TABLE bike_frame (
  id SERIAL PRIMARY KEY,
  bike_id INTEGER NULL,
  frame_id INTEGER NULL
);

DROP TABLE IF EXISTS bike_tire_id;

CREATE TABLE bike_tire_id (
  id SERIAL PRIMARY KEY,
  bike_id INTEGER NULL,
  front_tire_id INTEGER NULL,
  back_tire_id INTEGER NULL
);
