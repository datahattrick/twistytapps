-- +goose Up
CREATE TABLE TasksType (
    id UUID PRIMARY KEY,
    task_type TEXT NOT NULL
);

CREATE TABLE TaskMapp (
    task_id UUID PRIMARY KEY REFERENCES Tasks(id),
    mapp_id UUID REFERENCES Mapp(id)
);

CREATE TABLE TaskCapp (
    task_id UUID PRIMARY KEY REFERENCES Tasks(id),
    capp_id UUID REFERENCES Capp(id)
);

CREATE TABLE Capp (
    id UUID PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE Mapp (
    id UUID PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE AuthorsToTasksRelation (
  id UUID PRIMARY KEY,
  author_id UUID NOT NULL,
  task_id UUID NOT NULL
);

CREATE TABLE Authors (
  id UUID PRIMARY KEY,
  name TEXT NOT NULL,
  class_id UUID NOT NULL,
  FOREIGN KEY (class_id) REFERENCES Class(id)
);

CREATE TABLE Tasks (
    id UUID PRIMARY KEY,
    name TEXT NOT NULL,
    type TEXT,
    status TEXT,
    class_id TEXT,
    "user" TEXT,
    author TEXT,
    FOREIGN KEY (class_id) REFERENCES Class(id),
    FOREIGN KEY (type) REFERENCES TasksType(id),
    FOREIGN KEY ("user") REFERENCES Users(id),
    FOREIGN KEY (author) REFERENCES Authors(id)
);

-- +goose Down
DROP TABLE Tasks;
DROP TABLE TasksType;
DROP TABLE Mapp;
DROP TABLE Capp;