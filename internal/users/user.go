package users

import "github.com/datahattrick/twistyapps/internal/groups"

type User struct {
	Id        string         `json:"id,omitempty"`
	Username  string         `json:"username"`
	FirstName string         `json:"firstName"`
	LastName  string         `json:"lastName"`
	Email     string         `json:"email"`
	Groups    []groups.Group `json:"groups"`
}
