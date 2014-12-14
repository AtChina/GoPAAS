package controllers

import (
	"github.com/astaxie/beego"
)

func init() {
	//注册路由
	beego.Router("/system/certificate", &SystemController{}, "*:CertificateView")
	beego.Router("/system/entinfo", &SystemController{}, "*:EntInfoView")
	beego.Router("/system/menulist", &SystemController{}, "*:MenulistView")
	beego.Router("/system/outlinefile", &SystemController{}, "*:OutlineFileView")
	beego.Router("/system/theme", &SystemController{}, "*:ThemeFileView")
	beego.Router("/system/setting", &SystemController{}, "*:SettingView")
}

type SystemController struct {
	beego.Controller
}

//证书管理
func (this *SystemController) CertificateView() {
	this.TplNames = "VSystem/VCertificate/View.html"
}

// 企业信息
func (this *SystemController) EntInfoView() {
	this.TplNames = "VSystem/VEntInfo/View.html"
}

// 菜单管理
func (this *SystemController) MenulistView() {
	this.TplNames = "VSystem/VMenulist/View.html"
}

// 离线文件
func (this *SystemController) OutlineFileView() {
	this.TplNames = "VSystem/VOutlineFile/View.html"
}

// 企业主题
func (this *SystemController) ThemeFileView() {
	this.TplNames = "VSystem/VTheme/View.html"
}

// 其他设置
func (this *SystemController) SettingView() {
	this.TplNames = "VSystem/VSetting/View.html"
}
