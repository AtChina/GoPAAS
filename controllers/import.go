package controllers

import (
	"github.com/astaxie/beego"
)

func init() {
	//注册路由
	beego.Router("/import", &ImportController{}, "*:View")
	beego.Router("/import/manager", &ImportController{}, "*:Manager")
}

type ImportController struct {
	beego.Controller
}

func (this *ImportController) View() {
	this.TplNames = "VImport/View.html"
}
func (this *ImportController) Manager() {
	this.TplNames = "VImport/Manager.html"
}
