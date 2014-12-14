package models

type Task struct {
	Title         string `json:"title"`
	Percent       string `json:"percent"`
	ProgressClass string `json:"progressClass"`
	Action        string `json:"action"`
}

func (t *Task) GetAllTasks() []*Task {
	tasks := []*Task{
		&Task{Title: "New release v1.2", Percent: "30%", ProgressClass: "progress progress-success", Action: "#"},
		&Task{Title: "Application deployment", Percent: "65%", ProgressClass: "progress progress-danger progress-striped active", Action: "#"},
		&Task{Title: "Mobile app release", Percent: "98%", ProgressClass: "progress progress-success", Action: "#"},
		&Task{Title: "Database migration", Percent: "10%", ProgressClass: "progress progress-warning progress-striped", Action: "#"},
		&Task{Title: "Web server upgrade", Percent: "58%", ProgressClass: "progress progress-info", Action: "#"},
		&Task{Title: "Mobile development", Percent: "85%", ProgressClass: "progress progress-success", Action: "#"},
	}
	return tasks
}
