package controllers

import (
	"github.com/astaxie/beego"
)

func init() {
	//注册路由
	beego.Router("/forms", &FormsController{}, "*:View")
	beego.Router("/forms/manager", &FormsController{}, "*:Manager")
}

type FormsController struct {
	beego.Controller
}

func (this *FormsController) View() {
	this.TplNames = "VForms/View.html"
}
func (this *FormsController) Manager() {
	this.TplNames = "VForms/Manager.html"
}
