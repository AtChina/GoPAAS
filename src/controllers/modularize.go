package controllers

import (
	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/modularize", &ModularizeController{}, "*:Manager")
	beego.Router("/modularize/view", &ModularizeController{}, "*:View")
}

type ModularizeController struct {
	beego.Controller
}

func (this *ModularizeController) View() {
	this.TplNames = "VModularize/View.html"
}
func (this *ModularizeController) Manager() {
	this.TplNames = "VModularize/Manager.html"
}
