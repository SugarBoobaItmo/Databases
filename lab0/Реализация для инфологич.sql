
CREATE TABLE "профессия" (
  "ключ_профессии" " " PRIMARY KEY,
  "имя_профессии" " " NOT NULL
);

CREATE TABLE "существо_навык" (
  "ключ_существо_навык" " " PRIMARY KEY,
  "ключ_существа" " " REFERENCES "существо" ("ключ_существа") NOT NULL,
  "ключ_навыка" " " REFERENCES "навык" ("ключ_навыка") NOT NULL
);

CREATE TABLE "существо_действие" (
  "ключ_существо_действие" " " PRIMARY KEY,
  "ключ_существа" " " REFERENCES "существо" ("ключ_существа") NOT NULL,
  "ключ_действия" " " REFERENCES "действие" ("ключ_действия") NOT NULL
);

CREATE TABLE "действие" (
  "ключ_действия" " " PRIMARY KEY,
  "имя_действия" " " NOT NULL
);

CREATE TABLE "навык" (
  "ключ_навыка" " " PRIMARY KEY,
  "имя_навыка" " " NOT NULL
);

CREATE TABLE "личность" (
  "ключ_личности" " " PRIMARY KEY,
  "имя_личности" " " NOT NULL,
  "описание" " " NOT NULL
);

CREATE TABLE "существо" (
  "ключ_существа" " " PRIMARY KEY,
  "имя_существа" " " NOT NULL,
  "является_ли_человеком" " " NOT NULL,
  "КИ_шкала"  " " NOT NULL,
  "личность" " " REFERENCES "личность" ("ключ_личности") NULL,
  "профессия" " " REFERENCES "профессия" ("ключ_профессии") NULL
);
