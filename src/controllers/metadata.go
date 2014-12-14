package controllers

import (
	"github.com/astaxie/beego"
)

func init() {
	//注册路由
	beego.Router("/metadata/business", &MetadataController{}, "*:BusinessView")
	beego.Router("/metadata/datasource", &MetadataController{}, "*:DatasourceView")
	beego.Router("/metadata/localtable", &MetadataController{}, "*:LocalTableView")
	beego.Router("/metadata/relation", &MetadataController{}, "*:RelationView")
	beego.Router("/metadata/technology", &MetadataController{}, "*:TechnologyView")
}

type MetadataController struct {
	beego.Controller
}

//业务元数据
func (this *MetadataController) BusinessView() {
	this.TplNames = "VMetadata/VBusiness/View.html"
}

// 数据源管理
func (this *MetadataController) DatasourceView() {
	this.TplNames = "VMetadata/VDatasource/View.html"
}

// 本地表管理
func (this *MetadataController) LocalTableView() {
	this.TplNames = "VMetadata/VLocalTable/View.html"
}

// 配置关系管理
func (this *MetadataController) RelationView() {
	this.TplNames = "VMetadata/VRelation/View.html"
}

// 元数据管理
func (this *MetadataController) TechnologyView() {
	this.TplNames = "VMetadata/VTechnology/View.html"
}
