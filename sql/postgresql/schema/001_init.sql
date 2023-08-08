-- Initilise dependency tables
-- +goose Up
CREATE TABLE Class (
    Id UUID PRIMARY KEY,
    Rating TEXT NOT NULL,
    Caveat TEXT,
    Relative TEXT[]
);

CREATE TABLE Groups (
  id UUID PRIMARY KEY,
  name TEXT NOT NULL UNIQUE
);

-- +goose Down
DROP TABLE Class;
DROP TABLE Groups;