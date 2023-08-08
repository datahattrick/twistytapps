package authors

import (
	"github.com/gofiber/fiber/v2"
)

func AddAuthor(c *fiber.Ctx) error {
	return c.SendStatus(fiber.StatusOK)
}

func ArchiveAuthor(c *fiber.Ctx) error {
	return c.SendStatus(fiber.StatusOK)
}

func FindAuthorByStatus(c *fiber.Ctx) error {
	return c.SendStatus(fiber.StatusOK)
}

func FindAuthorsByTask(c *fiber.Ctx) error {
	return c.SendStatus(fiber.StatusOK)
}

func GetAuthorById(c *fiber.Ctx) error {
	return c.SendStatus(fiber.StatusOK)
}

func UpdateAuthor(c *fiber.Ctx) error {
	return c.SendStatus(fiber.StatusOK)
}
