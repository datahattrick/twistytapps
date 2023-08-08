package api

import (
	"github.com/datahattrick/tapp/internal/authors"
	"github.com/datahattrick/tapp/internal/tasks"
	"github.com/datahattrick/tapp/internal/users"
	"github.com/gofiber/fiber/v2"
)

func CreateV1Routes(app fiber.Router) {
	// initialise version 1 of the api
	v1 := app.Group("/v1")

	v1.Get("/healthy", func(c *fiber.Ctx) error {
		return c.SendString("I'm a GET request!")
	})

	userRouter(v1)
	authorRouter(v1)
	tasksRouter(v1)
}

func userRouter(app fiber.Router) {
	app.Post("/user", users.CreateUser)
	app.Post("/user/createWithList", users.CreateUsersWithListInput)
	app.Delete("/user/:username", users.DeleteUser)
	app.Get("/user/login", users.LoginUser)
	app.Get("/user/logout", users.LogoutUser)
	app.Put("/user/:username", users.UpdateUser)
}

func authorRouter(app fiber.Router) {
	app.Post("/authors", authors.AddAuthor)
	app.Delete("/authors/:authorId", authors.ArchiveAuthor)
	app.Get("/authors/findByStatus", authors.FindAuthorByStatus)
	app.Get("/authors/findByTasks", authors.FindAuthorsByTask)
	app.Get("/authors/{authorId}", authors.GetAuthorById)
	app.Put("/authors", authors.UpdateAuthor)
}

func tasksRouter(app fiber.Router) {
	app.Post("/tasks", tasks.AddTasks)
	app.Delete("/tasks/:taskId", tasks.ArchiveTask)
	app.Get("/tasks/findByAuthors", tasks.FindTasksByAuthors)
	app.Get("/tasks/findByStatus", tasks.FindTasksByStatus)
	app.Get("/tasks/:taskId", tasks.GetTaskById)
	app.Put("/tasks", tasks.UpdateTasks)
}
