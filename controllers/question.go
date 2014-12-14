package controllers

import (
	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/system/question", &QuestionController{}, "*:View")
}

type QuestionController struct {
	beego.Controller
}

func (this *QuestionController) View() {
	this.TplNames = "VSystem/VQuestion/View.html"
}
