CREATE TABLE action IF NOT EXISTS(
  id SERIAL PRIMARY KEY,
  name varchar(40) NOT NULL
);

CREATE TABLE skill IF NOT EXISTS(
  id SERIAL PRIMARY KEY,
  name varchar(40) NOT NULL
);

CREATE TABLE profession IF NOT EXISTS(
  id SERIAL PRIMARY KEY,
  name varchar(40) NOT NULL
);



CREATE TABLE personality IF NOT EXISTS(
  id SERIAL PRIMARY KEY,
  name varchar(40) NOT NULL,
  description text NOT NULL
);

CREATE TABLE creature IF NOT EXISTS(
  id SERIAL PRIMARY KEY,
  name varchar(40) NOT NULL,
  is_human boolean NOT NULL,
  ki_grade int NOT NULL,
  personality_id int REFERENCES personality (id) NULL,
  profession_id int REFERENCES profession (id) NULL
);

Create table creature_skill IF NOT EXISTS(
  id SERIAL PRIMARY KEY,
  creature_id int REFERENCES creature (id) NOT NULL,
  skill_id int REFERENCES skill (id) NOT NULL
);


CREATE TABLE creature_action IF NOT EXISTS(
  id SERIAL PRIMARY KEY,
  creature_id int REFERENCES creature (id) NOT NULL,
  action_id int REFERENCES action (id) NOT NULL,
  start_time time NULL,
  end_time time NULL
);


