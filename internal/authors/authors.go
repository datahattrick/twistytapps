package authors

import "github.com/datahattrick/twistyapps/internal/class"

type Author struct {
	Id    string       `json:"id,omitempty"`
	Name  string       `json:"name"`
	Class *class.Class `json:"class"`
	Book  []*Book      `json:"book"`
}

type Book struct {
	Id    string       `json:"id,omitempty"`
	Name  string       `json:"name"`
	Class *class.Class `json:"class"`
}
