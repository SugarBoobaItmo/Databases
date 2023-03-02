CREATE TABLE "существо" (
  "ключ_существа" " " PRIMARY KEY,
  "имя_существа" " " NOT NULL,
  "является_ли_человеком" " " NOT NULL,
  "КИ_шкала"  " " NOT NULL,
  "личность" " " REFERENCES "личность" ("ключ_личности") NULL
);

CREATE TABLE "действие" (
  "ключ_действия" " " PRIMARY KEY,
  "название_действия" " " NOT NULL
);

CREATE TABLE "способности_существа" (
  "ключ_существа" " " REFERENCES "существо" ("ключ_существа") NOT NULL,
  "ключ_действия" " " REFERENCES "действие" ("ключ_действия") NOT NULL
);

CREATE TABLE "существо_действие" (
  "ключ_существа" " " REFERENCES "существо" ("ключ_существа") NOT NULL,
  "ключ_действия" " " REFERENCES "действие" ("ключ_действия") NOT NULL,
  "начало_времени" " " NOT NULL,
  "конец_времени" " " NOT NULL
);

CREATE TABLE "личность" (
  "ключ_личности" " " PRIMARY KEY,
  "тип_личности" " " NOT NULL,
  "описание_личности" " " NOT NULL
);
