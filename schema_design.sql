-- 1. Medical Center
--  A medical center employs several doctors
-- A doctors can see many patients
-- A patient can be seen by many doctors
-- During a visit, a patient may be diagnosed to have one or more diseases.

 CREATE TABLE doctors (
    id SERIAL PRIMARY KEY,
    doc_name TEXT NOT NULL,
    patient_id REFERENCES patients
 )
 CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    patient_name TEXT NOT NULL,
    doc_id INTEGER REFERENCES doctors,
    diseases_id REFERENCES diseases
)
 CREATE TABLE diseases (
    id SERIAL PRIMARY KEY,
    patient_id REFERENCES patients
    diagnosis TEXT
)
  -- 2. Craigslist
-- Design a schema for Craigslist! Your schema should keep track of the following
--  The region of the craigslist post (San Francisco, Atlanta, Seattle, etc)
-- Users and preferred region
-- Posts: contains title, text, the user who has posted, the location of the posting, the region of the posting
-- Categories that each post belongs to
 CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT UNIQUE,
    preferred_region_id TEXT REFERENCES location
);
 CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    region TEXT,
    title TEXT,
    content TEXT,
    username REFERENCES users,
    location_id INTEGER REFERENCES location,
    category_id REFERENCES categories
);
 CREATE TABLE location (
    id SERIAL PRIMARY KEY,
    location TEXT NOT NULL,
    preferred_region TEXT NOT NULL
)
 CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    category_name TEXT NOT NULL,
 );

  -- 3. Soccer League
--  Design a schema for a simple sports league. Your schema should keep track of
-- All of the teams in the league
-- All of the goals scored by every player for each game
-- All of the players in the league and their corresponding teams
-- All of the referees who have been part of each game
-- All of the matches played between teams
-- All of the start and end dates for season that a league has The standings/rankings of each team in the league (This doesn’t have to be its own table if the data can be captured somehow).
 CREATE TABLE league (
    id SERIAL PRIMARY KEY,
    teams_id INTEGER REFERENCES teams,
    players_id REFERENCES teams
);
 CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    teams_name TEXT,
    player_name TEXT,
    num_goals REFERENCES goals
);
 CREATE TABLE goals (
    id SERIAL PRIMARY KEY
    player TEXT REFERENCES teams
 );
 CREATE TABLE game (
    id SERIAL PRIMARY KEY,
    referee REFERENCES referees,
    matches TEXT
    season REFERENCES season
 );
 CREATE TABLE season(
    id SERIAL PRIMARY KEY,
    start_date TEXT,
    end_date TEXT
);
 CREATE TABLE referees(
    id SERIAL PRIMARY KEY
);
