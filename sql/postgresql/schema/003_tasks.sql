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

CREATE TABLE Tasks (
    id UUID PRIMARY KEY,
    name TEXT NOT NULL,
    type TEXT,
    status TEXT,
    class_id TEXT,
    FOREIGN KEY (class_id) REFERENCES Class(id),
    FOREIGN KEY (type) REFERENCES TasksType(id)
);

-- +goose Down
DROP TABLE Tasks;
DROP TABLE TasksType;
DROP TABLE Mapp;
DROP TABLE Capp;