-- +goose Up
CREATE TABLE Users (
    id TEXT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    username TEXT NOT NULL UNIQUE,
    api_key TEXT NOT NULL
);

CREATE TABLE UsersGroupsRelation (
    userid TEXT NOT NULL,
    groupid TEXT NOT NULL,
    FOREIGN KEY (userid) REFERENCES user(userid), 
    FOREIGN KEY (groupid) REFERENCES groups(groupid),
    UNIQUE (userid, groupid)
);

-- +goose Down
DROP TABLE Users;
DROP TABLE UsersGroupsRelation;