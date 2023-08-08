package tasks

import (
	"github.com/gofiber/fiber/v2"
)

func AddTasks(c *fiber.Ctx) error {
	return c.SendStatus(fiber.StatusOK)
}

func ArchiveTask(c *fiber.Ctx) error {
	return c.SendStatus(fiber.StatusOK)
}

func FindTasksByAuthors(c *fiber.Ctx) error {
	return c.SendStatus(fiber.StatusOK)
}

func FindTasksByStatus(c *fiber.Ctx) error {
	return c.SendStatus(fiber.StatusOK)
}

func GetTaskById(c *fiber.Ctx) error {
	return c.SendStatus(fiber.StatusOK)
}

func UpdateTasks(c *fiber.Ctx) error {
	return c.SendStatus(fiber.StatusOK)
}
