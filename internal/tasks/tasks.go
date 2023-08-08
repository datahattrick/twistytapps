package tasks

import (
	"github.com/datahattrick/twistyapps/internal/capp"
	"github.com/datahattrick/twistyapps/internal/class"
	"github.com/datahattrick/twistyapps/internal/mapp"
)

type Tasks struct {
	Id     string       `json:"id,omitempty"`
	Name   string       `json:"name"`
	Type   string       `json:"type,omitempty"`
	Status string       `json:"status,omitempty"`
	Class  *class.Class `json:"class"`
}

type TasksType struct {
	Mapp *mapp.Mapp `json:"mapp,omitempty"`
	Capp *capp.Capp `json:"capp,omitempty"`
}
