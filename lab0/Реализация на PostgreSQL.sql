-- drop tables
DROP TABLE IF EXISTS action CASCADE;
DROP TABLE IF EXISTS skill CASCADE;
DROP TABLE IF EXISTS profession CASCADE;
DROP TABLE IF EXISTS personality CASCADE;
DROP TABLE IF EXISTS creature CASCADE;
DROP TABLE IF EXISTS creature_skill CASCADE;
DROP TABLE IF EXISTS creature_action CASCADE;

-- dropping domains
DROP DOMAIN IF EXISTS positive_int CASCADE;
DROP DOMAIN IF EXISTS ki_value CASCADE;

-- creating domains
CREATE DOMAIN positive_int AS int CHECK (VALUE > 0);
CREATE DOMAIN ki_value AS int CHECK (VALUE >= 0 AND VALUE <= 100 OR VALUE IS NULL);

-- creating tables
CREATE TABLE IF NOT EXISTS action(
  id SERIAL PRIMARY KEY,
  name varchar(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS skill(
  id SERIAL PRIMARY KEY,
  name varchar(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS profession(
  id SERIAL PRIMARY KEY,
  name varchar(40) NOT NULL
);


CREATE TABLE IF NOT EXISTS personality(
  id SERIAL PRIMARY KEY,
  name varchar(40) NOT NULL,
  description text NOT NULL
);

CREATE TABLE IF NOT EXISTS creature(
  id SERIAL PRIMARY KEY,
  name varchar(40) NOT NULL,
  is_human boolean NOT NULL,
  ki_grade ki_value NOT NULL,
  personality_id int REFERENCES personality (id) NULL,
  profession_id int REFERENCES profession (id) NULL
);

Create table IF NOT EXISTS creature_skill(
  id SERIAL PRIMARY KEY,
  creature_id int REFERENCES creature (id) NOT NULL,
  skill_id int REFERENCES skill (id) NOT NULL
);


CREATE TABLE IF NOT EXISTS creature_action(
  id SERIAL PRIMARY KEY,
  creature_id int REFERENCES creature (id) NOT NULL,
  action_id int REFERENCES action (id) NOT NULL,
  start_time time NULL,
  end_time time NULL
);


