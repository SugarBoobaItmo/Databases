CREATE TABLE action (
  id SERIAL PRIMARY KEY,
  name varchar(40) NOT NULL
);

CREATE TABLE personality (
  id SERIAL PRIMARY KEY,
  name varchar(20) NOT NULL,
  description varchar(100) NOT NULL
);

CREATE TABLE creature (
  id SERIAL PRIMARY KEY,
  name varchar(20) NOT NULL,
  is_human boolean NOT NULL,
  ki_grade int NOT NULL,
  personality_id int REFERENCES personality (id) NULL
);




CREATE TABLE creatures_ability (
  id SERIAL PRIMARY KEY,
  creature_id int REFERENCES creature (id) NOT NULL,
  action_id int REFERENCES action (id) NOT NULL
);


CREATE TABLE creature_action (
  id SERIAL PRIMARY KEY,
  creature_id int REFERENCES creature (id) NOT NULL,
  action_id int REFERENCES action (id) NOT NULL,
  start_time time NOT NULL,
  end_time time NOT NULL
);


