-- +goose Up
CREATE TABLE Users (
    id UUID PRIMARY KEY,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    username TEXT NOT NULL UNIQUE,
    api_key TEXT NOT NULL
);

CREATE TABLE UsersGroupsRelation (
    userid UUID NOT NULL,
    groupid UUID NOT NULL,
    FOREIGN KEY (userid) REFERENCES Users(id), 
    FOREIGN KEY (groupid) REFERENCES Groups(id),
    UNIQUE (userid, groupid)
);

-- +goose Down
DROP TABLE Users;
DROP TABLE UsersGroupsRelation;