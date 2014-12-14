package controllers

import (
	"github.com/astaxie/beego"
)

func init() {
	//注册路由
	beego.Router("/webgis", &WebgisController{}, "*:Manager")
	beego.Router("/webgis/view", &WebgisController{}, "*:View")
}

type WebgisController struct {
	beego.Controller
}

func (this *WebgisController) View() {
	this.TplNames = "VWebgis/View.html"
}

func (this *WebgisController) Manager() {
	this.TplNames = "VWebgis/Manager.html"
}
