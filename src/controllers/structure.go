package controllers

import (
	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/department/view", &StructureController{}, "*:View")
	beego.Router("/emplyee/view", &StructureController{}, "*:Emplyee")
	beego.Router("/roles/view", &StructureController{}, "*:Roles")
}

type StructureController struct {
	beego.Controller
}

func (this *StructureController) View() {
	this.TplNames = "VStructure/VDepartment/View.html"
}
func (this *StructureController) Emplyee() {
	this.TplNames = "VStructure/VEmplyee/View.html"
}
func (this *StructureController) Roles() {
	this.TplNames = "VStructure/VRoles/View.html"
}
