package controllers

import (
	"github.com/astaxie/beego"
)

func init() {
	//注册路由
	beego.Router("/information/announcement", &InformationController{}, "*:AnnouncementView")
	beego.Router("/information/attachment", &InformationController{}, "*:AttachmentView")
	beego.Router("/information/comment", &InformationController{}, "*:CommentView")
	beego.Router("/information/status", &InformationController{}, "*:StatusView")
}

type InformationController struct {
	beego.Controller
}

//公告管理
func (this *InformationController) AnnouncementView() {
	this.TplNames = "VInformation/VAnnouncement/View.html"
}

//附件管理
func (this *InformationController) AttachmentView() {
	this.TplNames = "VInformation/VAttachment/View.html"
}

//评论管理
func (this *InformationController) CommentView() {
	this.TplNames = "VInformation/VComment/View.html"
}

//状态查看
func (this *InformationController) StatusView() {
	this.TplNames = "VInformation/VStatus/View.html"
}
