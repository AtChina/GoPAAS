package main

import (
	//_ "github.com/go-sql-driver/mysql" //the drive of mysql database
	//_ "github.com/lib/pq" //the drive of postgresql database
	//_ "github.com/mattn/go-sqlite3" //the drive of sqlite3k database

	_ "EtionPlatform/controllers"
	"github.com/astaxie/beego"
	_ "github.com/astaxie/beego/validation"
)

func main() {
	beego.Run()
}
