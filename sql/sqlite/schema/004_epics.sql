-- +goose Up

CREATE TABLE Epics (
  id TEXT PRIMARY KEY,
  name TEXT PRIMARY KEY,
);

-- +goose Down
DROP TABLE Epics;