-- name: CreateUser :one
INSERT INTO Users (id, created_at, updated_at, first_name, last_name, email, username, api_key)
VALUES (?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8)
RETURNING *;

-- name: CreateGroupRelationship :exec
INSERT INTO UsersGroupsRelation (userid, groupid)
VALUES (?1, ?2);