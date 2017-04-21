# relationaldbs
Learners Guild Goal 254, Core Relational Database

These are the basic specs for Relational Databases, broken into 5 stages. If you complete these specs, try taking on some of the Stretch specs.

# Stage 1

Setup repo, complete a Khan Academy project, and install PostgreSQL. For instructions on installing PostgreSQL, see the guides in Resources > Guides.

 - [x] Artifact repo is created on GitHub.
 - [x] The artifact repo is properly licensed, preferably with the MIT license.
 - [x] Solution SQL for the Khan Academy project: Design a store database is added to a file in your repo named store_db.sql
 - [x] SQL in store_db.sql has consistent indentation.
 - [x] All the SQL keywords in store_db.sql are written in ALL CAPS.
 - [x] PostgreSQL is installed on your computer with Homebrew.

# Stage 2

Complete another Khan Academy project, use the SQL Designer tool, and install the Postico app (this is recommended, but not required).

 - [x] Solution SQL for the Khan Academy project: Data dig is added to a file in your repo named data_dig.sql
 - [x] SQL in data_dig.sql has consistent indentation.
 - [x] All the SQL keywords in data_dig.sql are written in ALL CAPS.
 - [x] Schema diagrams are created for both the “Store database” and “Data dig” database using the SQL Designer tool.
 - [x] Screenshots of each schema diagram are added to repo as store_db_schema.png and data_dig_schema.png, respectively.

# Stage 3

Create schemas and mock data for the “Bike Shop” and “Music Player” apps from the Init 2 goal. Then run queries against them. Read the Generating Mock Data section to learn how to generate fake data.

 - [x] Folder bike-shop/ exists in your repo.
 - [x] Database schema SQL (using PostgreSQL syntax) for the Bike Shop from Init 2: OOP Practice with Bike Shop is included in the file bike-shop/schema.sql.
 - [x] Bike Shop schema matches the specifications in Table Schema for Bike Shop.
 - [x] Folder music-player/ exists in your repo.
 - [x] Database schema SQL (using PostgreSQL syntax) for the Music Player from Init 2: OOP Practice with Bike Shop is included in the file music-player/schema.sql.
 - [x] Music Player schema includes tables and appropriate columns for:
   - [x] Artists
   - [x] Albums
   - [x] Songs
   - [x] Playlists
 - [x] Mock data is generated for the Music Player and added to the file music-player/mock_data.sql.
 - [x] Sample queries against the Music Player database are added to the file music-player/queries.sql.
 - [x] Queries against the Music Player include at least one instance of the following SQL keywords:
    - [x] WHERE
    - [x]  LIMIT
    - [x] ORDER BY
    - [x] LIKE
    - [x] AND/OR
    - [x] HAVING
    - [x] IN
    - [x] JOIN

# Stage 4

Complete the final Khan Academy project. Design and create schemas for the “Bossggle” and “Mmmarkdown” apps from the Init 1 and Init 3 goals.

- [x] Solution SQL for the Khan Academy project: App impersonator is added to a file in your repo named app_impersonator.sql
- [x] SQL in app_impersonator.sql has consistent indentation.
- [x]  All the SQL keywords in app_impersonator.sql are written in ALL CAPS.
- [x]  Folder bossggle/ exists in your repo.
- [  ]  Database schema SQL (using PostgreSQL syntax) for the Bossggle game from Init 1: Bossggle Word Game is included in the file bossggle/schema.sql.
- [ ]  Bossggle schema supports the following features (i.e. you could write SQL to show this data):
  - [ ] List all words guessed
  - [ ]  Count all correct words guessed
  - [ ]  Count all incorrect words guessed
  - [ ] List all words guessed and their scores
  - [ ]  Get sum of scores for all words guessed
  - [ ]  Show 10 most recently guessed words
- [ ]  Folder mmarkdown/ exists in your repo.
- [ ]  Database schema SQL (using PostgreSQL syntax) for the Mmmarkdown app from Init 3: Hello Web Servers is included in the file mmarkdown/schema.sql.
- [ ]  Mmmarkdown schema supports the following features (i.e. you could write SQL to show this data):
  - [ ]  List all files
  - [ ]  List all files ordered by their latest edit time (most recent first)
  - [ ]  Show file with particular name
  - [ ]  Get text content of file with particular name
  - [ ]  List created date of all files
  - [ ]  List every file name and its word count

# Stage 5

Pick 2-3 real-world apps (for example: Twitter, Instagram, Google Drive, etc.) and design a sample database schema for each of them. Then generate some mock data and run queries against them. Your schemas don’t have to be exactly what these apps would use, but they should roughly approximate the basic features.

 - [ ] 2 or 3 real-world apps are chosen and folders are created for each of them.
 - [ ]  For each real-world app chosen there exists:
  - [ ]  A SQL schema in the file <app name>/schema.sql.
  - [ ]  A set of mock data INSERT statements in the file <app name>/mock_data.sql.
  - [ ]  A set of example queries in the file <app name>/queries.sql.
  - [ ]  Queries against the real-world apps include at least one instance of the following SQL keywords:
     - [ ]  INSERT
     - [ ]  UPDATE
     - [ ]  DELETE
     - [ ]  WHERE
     - [ ]  LIMIT
     - [ ]  ORDER BY
     - [ ] JOIN
- [ ] SQL in all real-world app SQL files have consistent indentation.
- [ ] All the SQL keywords all real-world app SQL files are written in ALL CAPS.

# Table Schema for Bike Shop

Table: bikes
Column Name	Data Type	Default Value
id	SERIAL (PRIMARY KEY)	 
name	VARCHAR	 
price	DECIMAL	0.00
frame_id	INTEGER (FOREIGN KEY)	 
rings_front	INTEGER	3
rings_back	INTEGER	7
brakes_front	BOOLEAN	true
brakes_back	BOOLEAN	true
Table: frames

Column Name	Data Type	Default Value
id	SERIAL (PRIMARY KEY)	 
color	VARCHAR	‘black’
size	INTEGER	55
style	VARCHAR	‘street’
Table: tires

Column Name	Data Type	Default Value
id	SERIAL (PRIMARY KEY)	 
diameter	INTEGER	22
type	VARCHAR	‘street’
Table: bike_frame

Column Name	Data Type	Default Value
id	SERIAL (PRIMARY KEY)	 
bike_id	INTEGER (FOREIGN KEY)	NULL
frame_id	INTEGER (FOREIGN KEY)	NULL
Table: bike_tires

Column Name	Data Type	Default Value
id	SERIAL (PRIMARY KEY)	 
bike_id	INTEGER (FOREIGN KEY)	NULL
front_tire_id	INTEGER (FOREIGN KEY)	NULL
back_tire_id	INTEGER (FOREIGN KEY)	NULL

# Stretch

If you complete all of the specs listed above (the checkboxes), there’s no reason to stop there! Keep practicing with these stretch specs.

Choose an additional 3 real-world apps to reverse-engineer the databases for.

 For each real-world app chosen there exists:
 A folder in your repo <app name>/
 A SQL schema in the file <app name>/schema.sql.
 A set of mock data INSERT statements in the file <app name>/mock_data.sql.
 A set of example queries in the file <app name>/queries.sql.
Find a couple of large datasets online, create databases for them, and practice querying against them. Some good places to look are at data.gov and this list of public datasets.

 2 large datasets are included as CSV or JSON data in a folder called datasets/.
 SQL schema creating tables for the datasets are inclued in your repo.
 10+ queries against the datasets are included in files in your repo.

# Resources

Use these resources to fill in the gaps in your skills and knowledge as you find them. There is more here than you can do in a week, so focus on the areas that are in your zone of proximal development (ZPD).

##Courses

-Khan Academy: Intro to SQL: Querying and managing data #sql #db
  -SQL basics
  -More advanced SQL queries
  -Relational queries in SQL
  -Modifying databases with SQL
-Treehouse: Querying Relational Databases (2h) #sql #db
-Treehouse: SQL Basics #sql #db
-Treehouse: Modifying Data With SQL #sql #db
-Lynda: SQL Essential Training (3h 2m) #sql #db

##Exercises
-SQL Bolt #sql #db
-SQL Zoo #sql #db

##Guides

-CodeMentor: Getting Started with PostgreSQL on Mac OSX #devops #sql #postgresql
-Punit’s instructions for installing Homebrew + PostgreSQL (on a mac) #postgresql

##Tools

-Quick DB Diagrams #sql
-SQL Designer #sql
-Mock Data Generator #data #db
-Postico: PostgreSQL Client for the Mac #sql #postgresql #macapp


##Generating Mock Data

To quickly generate some “mock” (fake) data for your database, you can use a tool like Mockaroo.

It isn’t too hard. Just follow these steps:

1. Pick a table from your database
2. Go to the Mockaroo app
3. Add the fields you want to generate mock data for (make sure to match the spelling/capitalization of your table columns!)
4. Pick the corresponding data type to use for each field
5. Customize the options (if you want to)
6. Determine the # of rows to generate
7. Select the SQL format
8. Specify the table name
9. Click Download data
10. Copy the SQL statements from the downloaded file into your SQL console and execute them!
