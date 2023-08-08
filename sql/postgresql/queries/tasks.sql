-- name: CreateTask :one
INSERT INTO Tasks (id, name, type, status, class_id, "user", author)
VALUES ($1, $2, $3, $4, $5, $6, $7)
RETURNING *;

-- name: RelateMappTask :exec
INSERT INTO TaskMapp (task_id, mapp_id)
VALUES ($1, $2);

-- name: RelateCappTask :exec
INSERT INTO TaskCapp (task_id, capp_id)
VALUES ($1, $2);

-- name: CreateMappTask :one
INSERT INTO Mapp (id, name)
VALUES ($1, $2)
RETURNING *;

-- name: CreateCappTask :one
INSERT INTO Capp (id, name)
VALUES ($1, $2)
RETURNING *;