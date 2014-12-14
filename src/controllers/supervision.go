package controllers

import (
	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/supervision/monitor", &SupervisionController{}, "*:MonitorView")
	beego.Router("/supervision/statistics", &SupervisionController{}, "*:StatisticsView")
	beego.Router("/supervision/tasks", &SupervisionController{}, "*:TasksView")
}

type SupervisionController struct {
	beego.Controller
}

func (this *SupervisionController) MonitorView() {
	this.TplNames = "VSupervision/VMonitor/View.html"
}
func (this *SupervisionController) StatisticsView() {
	this.TplNames = "VSupervision/VStatistics/View.html"
}
func (this *SupervisionController) TasksView() {
	this.TplNames = "VSupervision/VTasks/View.html"
}
