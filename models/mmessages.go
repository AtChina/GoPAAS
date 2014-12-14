package models

type Message struct {
	Title        string `json:"title"`
	MessageClass string `json:"messageClass"`
	IconClass    string `json:"iconClass"`
	TimeText     string `json:"timeText"`
	Action       string `json:"action"`
}

func (m *Message) GetAllMessages() []*Message {
	messages := []*Message{
		&Message{Title: "New user registered.", MessageClass: "label label-success", IconClass: "icon-plus", TimeText: "Just now", Action: "#"},
		&Message{Title: "Server #12 overloaded.", MessageClass: "label label-important", IconClass: "icon-bolt", TimeText: "15 mins", Action: "#"},
		&Message{Title: "Server #2 not respoding.", MessageClass: "label label-warning", IconClass: "icon-bell", TimeText: "22 mins", Action: "#"},
		&Message{Title: "Application error.", MessageClass: "label label-info", IconClass: "icon-bullhorn", TimeText: "40 mins", Action: "#"},
		&Message{Title: "Database overloaded 68%.", MessageClass: "label label-important", IconClass: "icon-bolt", TimeText: "Database overloaded 68%.", Action: "#"},
		&Message{Title: "2 user IP blocked.", MessageClass: "label label-important", IconClass: "icon-bolt", TimeText: "5 hrs", Action: "#"},
	}
	return messages
}
