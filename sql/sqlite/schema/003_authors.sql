-- +goose Up
CREATE TABLE Books (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  class_id TEXT NOT NULL,
  FOREIGN KEY (class_id) REFERENCES Class(id)
);

CREATE TABLE Authors (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  class_id TEXT NOT NULL,
  book_id TEXT NOT NULL,
  FOREIGN KEY (class_id) REFERENCES Class(id)
);

-- +goose Down
DROP TABLE Books;
DROP TABLE Authors;