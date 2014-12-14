package controllers

import (
	"EtionPlatform/models"
	"github.com/astaxie/beego"
)

func init() {
	//注册路由
	beego.Router("/", &MainController{})
	beego.Router("/Index", &MainController{}, "*:Index")
	beego.Router("/Home", &MainController{}, "*:Home")

	//RESTful API
	beego.Router("/Api/getMenus", &MainController{}, "get:GetMenus")
	beego.Router("/Api/getDropdownmenus", &MainController{}, "get:GetDropDownMenus")
	beego.Router("/Api/getTasks", &MainController{}, "get:GetTasks")
	beego.Router("/Api/getMessages", &MainController{}, "get:GetMessages")
}

type MainController struct {
	beego.Controller
}

func (this *MainController) Get() {

	this.Data["Title"] = "用户登录"
	this.TplNames = "login.html"
}
func (this *MainController) Index() {
	this.TplNames = "main.html"
}
func (this *MainController) Home() {
	this.Data["Title"] = "Etion V4.0 概念版"
	this.Data["SystemVersion"] = "Etion V4.0 Beta"
	this.Data["MenuToggler"] = "media/image/menu-toggler.png"
	this.Data["MessageNumber"] = "6"
	this.Data["MessageSummary"] = "You have 14 new notifications"
	this.Data["TaskNumber"] = "5"
	this.Data["TaskSummary"] = "You have 12 pending tasks"
	this.Data["UserName"] = "weichangying"
	this.Data["UserIcon"] = "/static/resources/image/me.png"
	this.Data["HomeMenuName"] = "系统首页"
	this.Data["HomeMenuAction"] = "/Index"
	this.Data["copyright"] = "2013 &copy; XX无线科技有限公司."
	this.Layout = "layout.tpl"
	this.TplNames = "main.html"
}

func (this *MainController) GetMenus() {
	menus := new(models.Menu).GetAllMenus()
	this.Data["json"] = &menus
	this.ServeJson()
}

func (this *MainController) GetDropDownMenus() {
	downmenus := new(models.DownMenu).GetAllDownMenus()
	this.Data["json"] = &downmenus
	this.ServeJson()
}

func (this *MainController) GetTasks() {
	tasks := new(models.Task).GetAllTasks()
	this.Data["json"] = &tasks
	this.ServeJson()
}

func (this *MainController) GetMessages() {
	messages := new(models.Message).GetAllMessages()
	this.Data["json"] = &messages
	this.ServeJson()
}
