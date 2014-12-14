<!DOCTYPE html>
<!--[if IE 8]>
<html lang="zh-CN" class="ie8 no-js">
    <![endif]-->
    <!--[if IE 9]>
    <html lang="zh-CN" class="ie9 no-js">
        <![endif]-->
        <!--[if !IE]>
        <!-->
        <html lang="zh-CN" class="no-js">
            <!--<![endif]-->
            <!-- BEGIN HEAD -->
<head>
            <meta charset="utf-8">
            <link rel="shortcut icon" href="/static/image/favicon-beego.png" />
            <title>{{.Title}}</title>
            <meta content="width=device-width, initial-scale=1.0" name="viewport">
            <meta content="" name="description">
            <meta content="" name="author">
            <!-- BEGIN GLOBAL MANDATORY STYLES -->
            <link href="/static/bootstrap/v2/css/bootstrap.css" rel="stylesheet" type="text/css">
            <link href="/static/bootstrap/v2/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css">
            <link href="/static/css/font-awesome.min.css" rel="stylesheet" type="text/css">
            <link href="/static/Buttons/css/buttons.css" rel="stylesheet" type="text/css">
            <link href="/static/css/style.css" rel="stylesheet" type="text/css">
            <link href="/static/css/style-responsive.css" rel="stylesheet" type="text/css">
            <link href="/static/css/default.css" rel="stylesheet" type="text/css">
            <style>
            .sidebar-nav-fixed {
              position:fixed;
             }
        </style>
</head>
<body class="page-header-fixed">
            <!-- BEGIN HEADER -->
            <div class="header navbar navbar-inverse navbar-fixed-top">
                <div class="navbar-inner">
                    <div class="container-fluid">
                        <!-- BEGIN LOGO -->
                        <a class="brand text-center" href="#">Etion V4.0 Beta</a>
                        <!-- END LOGO -->
                        <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                        <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
                            <img src="media/image/menu-toggler.png" alt="" />
                        </a>
                        <!-- END RESPONSIVE MENU TOGGLER -->
                        <!-- BEGIN TOP NAVIGATION MENU -->
                        <ul class="nav pull-right">
                            <!-- BEGIN NOTIFICATION DROPDOWN -->
                            <li class="dropdown" id="header_notification_bar">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-warning-sign"></i>
                                    <span class="badge">6</span>
                                </a>
                                <ul class="dropdown-menu extended notification">
                                    <li>
                                        <p>You have 14 new notifications</p>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-success"> <i class="icon-plus"></i>
                                            </span>
                                            New user registered.
                                            <span class="time">Just now</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-important">
                                                <i class="icon-bolt"></i>
                                            </span>
                                            Server #12 overloaded.
                                            <span class="time">15 mins</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-warning">
                                                <i class="icon-bell"></i>
                                            </span>
                                            Server #2 not respoding.
                                            <span class="time">22 mins</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-info">
                                                <i class="icon-bullhorn"></i>
                                            </span>
                                            Application error.
                                            <span class="time">40 mins</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-important">
                                                <i class="icon-bolt"></i>
                                            </span>
                                            Database overloaded 68%.
                                            <span class="time">2 hrs</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-important">
                                                <i class="icon-bolt"></i>
                                            </span>
                                            2 user IP blocked.
                                            <span class="time">5 hrs</span>
                                        </a>
                                    </li>
                                    <li class="external">
                                        <a href="#">
                                            See all notifications
                                            <i class="m-icon-swapright"></i>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <!-- END NOTIFICATION DROPDOWN -->

                            <!-- BEGIN TODO DROPDOWN -->
                            <li class="dropdown" id="header_task_bar">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="icon-tasks"></i>
                                    <span class="badge">5</span>
                                </a>
                                <ul class="dropdown-menu extended tasks">
                                    <li>
                                        <p>You have 12 pending tasks</p>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="task">
                                                <span class="desc">New release v1.2</span>
                                                <span class="percent">30%</span>
                                            </span>
                                            <span class="progress progress-success ">
                                                <span style="width: 30%;" class="bar"></span>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="task">
                                                <span class="desc">Application deployment</span>
                                                <span class="percent">65%</span>
                                            </span>
                                            <span class="progress progress-danger progress-striped active">
                                                <span style="width: 65%;" class="bar"></span>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="task">
                                                <span class="desc">Mobile app release</span>
                                                <span class="percent">98%</span>
                                            </span>
                                            <span class="progress progress-success">
                                                <span style="width: 98%;" class="bar"></span>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="task">
                                                <span class="desc">Database migration</span>
                                                <span class="percent">10%</span>
                                            </span>
                                            <span class="progress progress-warning progress-striped">
                                                <span style="width: 10%;" class="bar"></span>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="task">
                                                <span class="desc">Web server upgrade</span>
                                                <span class="percent">58%</span>
                                            </span>
                                            <span class="progress progress-info">
                                                <span style="width: 58%;" class="bar"></span>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="task">
                                                <span class="desc">Mobile development</span>
                                                <span class="percent">85%</span>
                                            </span>
                                            <span class="progress progress-success">
                                                <span style="width: 85%;" class="bar"></span>
                                            </span>
                                        </a>
                                    </li>
                                    <li class="external">
                                        <a href="#">
                                            See all tasks
                                            <i class="m-icon-swapright"></i>
                                        </a>
                                    </li>
                                </ul>
                            </li>

                            <!-- END TODO DROPDOWN -->
                            <li class="dropdown user">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img alt="" src="/static/image/me.png" class="etion-user-avatar">
                                    <span class="username">weichangying</span>
                                    <i class="icon-angle-down"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="#">
                                            <i class="icon-user"></i>
                                            帐户信息
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="icon-calendar"></i>
                                            日程管理
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="icon-envelope"></i>
                                            电子邮件(3)
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="icon-tasks"></i>
                                            我的任务
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="#">
                                            <i class="icon-exchange"></i>
                                            切换系统
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/">
                                            <i class="icon-off"></i>
                                            注销登录
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <!-- END TOP NAVIGATION MENU --> </div>
                </div>
            </div>
            <!-- END HEADER -->
            <!-- BEGIN CONTAINER -->
            <div class="page-container">
                <div class="page-sidebar nav-collapse collapse sidebar-nav-fixed">
                    <ul class="page-sidebar-menu" ng-controller='MainMenuController'>
                        <li>
                            <div class="sidebar-toggler hidden-phone "></div>
                        </li>
                        <li class="start active">
                            <a href="/Index" class="ajaxify">
                                <i class="icon-home"></i>
                                <span class="title">系统首页</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-sitemap"></i>
                                <span class="title">组织架构</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="/department/view" class="ajaxify">
                                        <i class="icon-user-md"></i>
                                        <span class="title">部门管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/emplyee/view" class="ajaxify">
                                        <i class="icon-user"></i>
                                        <span class="title">人员管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/roles/view" class="ajaxify">
                                        <i class="icon-group"></i>
                                        <span class="title">角色管理</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-pinterest"></i>
                                <span class="title">企业资讯</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="/information/announcement" class="ajaxify">
                                        <i class=" icon-volume-up"></i>
                                        <span class="title">公告管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/information/attachment" class="ajaxify">
                                        <i class="icon-paper-clip"></i>
                                        <span class="title">附件管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/information/comment" class="ajaxify">
                                        <i class="icon-comment"></i>
                                        <span class="title">评论管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/information/status" class="ajaxify">
                                        <i class="icon-eye-open"></i>
                                        <span class="title">状态查看</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-bookmark-empty"></i>
                                <span class="title">模块配置</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="/modularize" class="ajaxify">
                                        <i class="icon-tags"></i>
                                        <span class="title">配置管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/modularize/view" class="ajaxify">
                                        <i class="icon-tag"></i>
                                        <span class="title">配置查看</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-table"></i>
                                <span class="title">表单配置</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="/forms/manager" class="ajaxify">
                                        <i class="icon-th-large"></i>
                                        <span class="title">配置管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/forms" class="ajaxify">
                                        <i class="icon-list-ol"></i>
                                        <span class="title">配置查看</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-map-marker"></i>
                                <span class="title">地图配置</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="/webgis" class="ajaxify">
                                        <i class="icon-globe"></i>
                                        <span class="title">配置管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/webgis/view" class="ajaxify">
                                        <i class="icon-screenshot"></i>
                                        <span class="title">配置查看</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-bar-chart"></i>
                                <span class="title">报表配置</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="/report" class="ajaxify">
                                        <i class="icon-th"></i>
                                        <span class="title">配置管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/report/view" class="ajaxify">
                                        <i class="icon-list"></i>
                                        <span class="title">配置查看</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-upload-alt"></i>
                                <span class="title">导入配置</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="/import/manager" class="ajaxify">
                                        <i class="icon-upload"></i>
                                        <span class="title">配置管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/import" class="ajaxify">
                                        <i class="icon-reorder"></i>
                                        <span class="title">配置查看</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-th"></i>
                                <span class="title">元数据源</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="/metadata/business" class="ajaxify">
                                        <i class="icon-book"></i>
                                        <span class="title">业务元数据</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/metadata/technology" class="ajaxify">
                                        <i class="icon-sun"></i>
                                        <span class="title">技术元数据</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/metadata/datasource" class="ajaxify">
                                        <i class="icon-barcode"></i>
                                        <span class="title">数据源管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/metadata/localtable" class="ajaxify">
                                        <i class="icon-wrench"></i>
                                        <span class="title">本地表管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/metadata/relation" class="ajaxify">
                                        <i class="icon-random"></i>
                                        <span class="title">配置关系图</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-time"></i>
                                <span class="title">监控调度</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="/supervision/monitor" class="ajaxify">
                                        <i class="icon-facetime-video"></i>
                                        <span class="title">实时监控</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/supervision/statistics" class="ajaxify">
                                        <i class="icon-tasks"></i>
                                        <span class="title">任务调度</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/supervision/tasks" class="ajaxify">
                                        <i class="icon-retweet"></i>
                                        <span class="title">报表调度</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="last">
                            <a href="javascript:;">
                                <i class="icon-cogs"></i>
                                <span class="title">系统设置</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="/system/entinfo" class="ajaxify">
                                        <i class="icon-info-sign"></i>
                                        <span class="title">企业信息</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/system/theme" class="ajaxify">
                                        <i class="icon-android"></i>
                                        <span class="title">终端主题</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/system/outlinefile" class="ajaxify">
                                        <i class="icon-download"></i>
                                        <span class="title">离线文件</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/system/menulist" class="ajaxify">
                                        <i class="icon-list"></i>
                                        <span class="title">菜单管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/system/certificate" class="ajaxify">
                                        <i class="icon-credit-card"></i>
                                        <span class="title">证书管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/system/question" class="ajaxify">
                                        <i class="icon-question-sign"></i>
                                        <span class="title">帮助中心</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/system/setting" class="ajaxify">
                                        <i class="icon-cog"></i>
                                        <span class="title">其他设置</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="page-content">
                    <div class="container-fluid">
                        <!-- BEGIN PAGE CONTAINER -->
                        <div class="row-fluid etion-page-content">{{.LayoutContent}}</div>
                        <!-- END PAGE CONTAINER --> </div>
                </div>
            </div>
            <!-- END CONTAINER -->
            <!-- BEGIN FOOTER -->
            <div class="footer">
                <div class="row-fluid text-center">
                    <h5 class="inline">2013 &copy; XX无线科技有限公司.</h5>
                    <div class="footer-tools">
                        <span class="go-top">
                            <i class="icon-angle-up"></i>
                        </span>
                    </div>
                </div>
            </div>
            <!-- END FOOTER -->

            <script src="/static/js/jquery-1.10.1.min.js" type="text/javascript"></script>
            <script src="/static/js/jquery.blockui.min.js" type="text/javascript"></script>
            <script src="/static/bootstrap/v2/js/bootstrap.min.js" type="text/javascript"></script>
            <script src="/static/js/app.js" type="text/javascript"></script>
            <script type="text/javascript">
            jQuery(document).ready(function() {
                 App.init(); 
            });
        </script>
</body>
        </html>