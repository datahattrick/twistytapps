-- Initilise dependency tables
-- +goose Up
CREATE TABLE Class (
  id TEXT PRIMARY KEY,
  rating TEXT NOT NULL UNIQUE,
  caveat TEXT NOT NULL UNIQUE,
  relative TEXT NOT NULL UNIQUE,
  FOREIGN KEY (relative) REFERENCES Relative(id)
);

CREATE TABLE Groups (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL UNIQUE
);

CREATE TABLE Relative (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL
);

-- +goose Down
DROP TABLE Class;
DROP TABLE Groups;