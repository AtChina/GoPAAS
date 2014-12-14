package controllers

import (
	"github.com/astaxie/beego"
)

func init() {
	//注册路由
	beego.Router("/report", &ReportController{}, "*:Manager")
	beego.Router("/report/view", &ReportController{}, "*:View")
}

type ReportController struct {
	beego.Controller
}

func (this *ReportController) View() {
	this.TplNames = "VReport/View.html"
}
func (this *ReportController) Manager() {
	this.TplNames = "VReport/Manager.html"
}
