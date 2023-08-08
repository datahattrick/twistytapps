-- +goose Up
CREATE TABLE TasksType (
    id TEXT PRIMARY KEY,
    task_type TEXT NOT NULL
);

CREATE TABLE TaskMapp (
    task_id TEXT PRIMARY KEY REFERENCES Tasks(id),
    mapp_id TEXT REFERENCES Mapp(id)
);

CREATE TABLE TaskCapp (
    task_id TEXT PRIMARY KEY REFERENCES Tasks(id),
    capp_id TEXT REFERENCES Capp(id)
);

CREATE TABLE Capp (
    id TEXT PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE Mapp (
    id TEXT PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE Tasks (
    id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    type TEXT,
    status TEXT,
    class_id TEXT,
    FOREIGN KEY (class_id) REFERENCES Class(id)
    FOREIGN KEY (type) REFERENCES TasksType(id)
);

-- +goose Down
DROP TABLE Tasks;
DROP TABLE TasksType;
DROP TABLE Mapp;
DROP TABLE Capp;