package models

type Menu struct {
	Title     string       `json:"title"`
	IconClass string       `json:"iconClass"`
	Childs    []*ChildMenu `json:"childs"`
}
type ChildMenu struct {
	Title     string `json:"title"`
	IconClass string `json:"iconClass"`
	Action    string `json:"action"`
}

func (m *Menu) GetAllMenus() []*Menu {
	menus := []*Menu{
		&Menu{Title: "组织架构", IconClass: "icon-sitemap", Childs: []*ChildMenu{
			&ChildMenu{Title: "部门管理", IconClass: "icon-user-md", Action: "/department/view"},
			&ChildMenu{Title: "人员管理", IconClass: "icon-user", Action: "/emplyee/view"},
			&ChildMenu{Title: "角色管理", IconClass: "icon-group", Action: "/roles/view"},
		}},
		&Menu{Title: "企业资讯", IconClass: "icon-pinterest", Childs: []*ChildMenu{
			&ChildMenu{Title: "公告管理", IconClass: "icon-volume-up", Action: "/information/announcement"},
			&ChildMenu{Title: "附件管理", IconClass: "icon-paper-clip", Action: "/information/attachment"},
			&ChildMenu{Title: "评论管理", IconClass: "icon-comment", Action: "/information/comment"},
			&ChildMenu{Title: "状态查看", IconClass: "icon-eye-open", Action: "/information/status"},
		}},
		&Menu{Title: "模块配置", IconClass: "icon-bookmark-empty", Childs: []*ChildMenu{
			&ChildMenu{Title: "配置管理", IconClass: "icon-tags", Action: "/modularize"},
			&ChildMenu{Title: "配置查看", IconClass: "icon-tag", Action: "/modularize/view"},
		}},
		&Menu{Title: "表单配置", IconClass: "icon-table", Childs: []*ChildMenu{
			&ChildMenu{Title: "配置管理", IconClass: "icon-th-large", Action: "/forms/manager"},
			&ChildMenu{Title: "配置查看", IconClass: "icon-list-ol", Action: "/forms"},
		}},
		&Menu{Title: "地图配置", IconClass: "icon-map-marker", Childs: []*ChildMenu{
			{Title: "配置管理", IconClass: "icon-globe", Action: "/webgis"},
			{Title: "配置查看", IconClass: "icon-screenshot", Action: "/webgis/view"},
		}},
		&Menu{Title: "报表配置", IconClass: "icon-bar-chart", Childs: []*ChildMenu{
			&ChildMenu{Title: "配置管理", IconClass: "icon-th", Action: "/report"},
			&ChildMenu{Title: "配置查看", IconClass: "icon-list", Action: "/report/view"},
		}},
		&Menu{Title: "导入配置", IconClass: "icon-upload-alt", Childs: []*ChildMenu{
			&ChildMenu{Title: "配置管理", IconClass: "icon-upload", Action: "/import/manager"},
			&ChildMenu{Title: "配置查看", IconClass: "icon-reorder", Action: "/import"},
		}},
		&Menu{Title: "元数据源", IconClass: "icon-th", Childs: []*ChildMenu{
			&ChildMenu{Title: "业务元数据", IconClass: "icon-book", Action: "/metadata/business"},
			&ChildMenu{Title: "技术元数据", IconClass: "icon-sun", Action: "/metadata/technology"},
			&ChildMenu{Title: "数据源管理", IconClass: "icon-barcode", Action: "/metadata/datasource"},
			&ChildMenu{Title: "本地表管理", IconClass: "icon-wrench", Action: "/metadata/localtable"},
			&ChildMenu{Title: "配置关系图", IconClass: "icon-random", Action: "/metadata/relation"},
		}},
		&Menu{Title: "监控调度", IconClass: "icon-time", Childs: []*ChildMenu{
			&ChildMenu{Title: "实时监控", IconClass: "icon-facetime-video", Action: "/supervision/monitor"},
			&ChildMenu{Title: "任务调度", IconClass: "icon-tasks", Action: "/supervision/statistics"},
			&ChildMenu{Title: "报表调度", IconClass: "icon-retweet", Action: "/supervision/tasks"},
		}},
		&Menu{Title: "系统设置", IconClass: "icon-cogs", Childs: []*ChildMenu{
			&ChildMenu{Title: "企业信息", IconClass: "icon-info-sign", Action: "/system/entinfo"},
			&ChildMenu{Title: "终端主题", IconClass: "icon-android", Action: "/system/theme"},
			&ChildMenu{Title: "离线文件", IconClass: "icon-download", Action: "/system/outlinefile"},
			&ChildMenu{Title: "菜单管理", IconClass: "icon-list", Action: "/system/menulist"},
			&ChildMenu{Title: "证书管理", IconClass: "icon-credit-card", Action: "/system/certificate"},
			&ChildMenu{Title: "其他设置", IconClass: "icon-cog", Action: "/system/setting"},
			&ChildMenu{Title: "帮助中心", IconClass: "icon-question-sign", Action: "/system/question"},
		}},
	}
	return menus
}
