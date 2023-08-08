package users

import (
	"github.com/gofiber/fiber/v2"
)

func CreateUser(c *fiber.Ctx) error {
	return c.SendStatus(fiber.StatusOK)
}

func CreateUsersWithListInput(c *fiber.Ctx) error {
	return c.SendStatus(fiber.StatusOK)
}

func DeleteUser(c *fiber.Ctx) error {
	return c.SendStatus(fiber.StatusOK)
}

func GetUserByName(c *fiber.Ctx) error {
	return c.SendStatus(fiber.StatusOK)
}

func LoginUser(c *fiber.Ctx) error {
	return c.SendStatus(fiber.StatusOK)
}

func LogoutUser(c *fiber.Ctx) error {
	return c.SendStatus(fiber.StatusOK)
}

func UpdateUser(c *fiber.Ctx) error {
	return c.SendStatus(fiber.StatusOK)
}
