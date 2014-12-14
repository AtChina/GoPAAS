package models

type DownMenu struct {
	Title     string `json:"title"`
	IconClass string `json:"iconClass"`
	Action    string `json:"action"`
}

func (dm *DownMenu) GetAllDownMenus() []*DownMenu {
	downmenus := []*DownMenu{
		&DownMenu{Title: "帐户信息", IconClass: "icon-user", Action: "#"},
		&DownMenu{Title: "日程管理", IconClass: "icon-calendar", Action: "#"},
		&DownMenu{Title: "电子邮件(3)", IconClass: "icon-envelope", Action: "#"},
		&DownMenu{Title: "我的任务", IconClass: "icon-tasks", Action: "#"},
		&DownMenu{Title: "切换系统", IconClass: "icon-exchange", Action: "#"},
		&DownMenu{Title: "注销登录", IconClass: "icon-off", Action: "/"},
	}
	return downmenus
}
