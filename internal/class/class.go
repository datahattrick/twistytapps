package class

type Class struct {
	Id       string   `json:"id,omitempty"`
	Rating   string   `json:"rating"`
	Caveat   string   `json:"caveat,omitempty"`
	Relative []string `json:"relative"`
}
