<!DOCTYPE html>
<!--[if IE 8]>
    <html lang="zh-CN" class="ie8 no-js">
<![endif]-->
<!--[if IE 9]>
    <html lang="zh-CN" class="ie9 no-js">
<![endif]-->
<!--[if !IE]><!-->
    <html lang="zh-CN" class="no-js" ng-app>
<!--<![endif]-->            
<head>
    <meta charset="utf-8">
    <link rel="shortcut icon" href="/static/resources/image/favicon-beego.png" />
    <title>[[.Title]]</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="description">
    <meta content="" name="author">
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="/static/styles/loader.css" rel="stylesheet" type="text/css">
</head>
    <body class="page-header-fixed">
        <!-- BEGIN HEADER -->
        <div class="header navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <!-- BEGIN LOGO -->
                    <a class="brand text-center" href="#">[[.SystemVersion]]</a>
                    <!-- END LOGO -->
                    <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                    <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
                        <img src="[[.MenuToggler]]" alt="" />
                    </a>
                    <!-- END RESPONSIVE MENU TOGGLER -->
                    <!-- BEGIN TOP NAVIGATION MENU -->
                    <ul class="nav pull-right">
                        <!-- BEGIN NOTIFICATION DROPDOWN -->
                        <li class="dropdown" id="header_notification_bar">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
                                <i class="icon-warning-sign"></i>
                                <span class="badge">[[.MessageNumber]]</span>
                            </a>
                            <ul class="dropdown-menu extended notification" ng-controller='MessageController'>
                                <li>
                                    <p>[[.MessageSummary]]</p>
                                </li>
                                <li ng-repeat="message in messages">
                                    <a href="{{message.action}}">
                                        <span class="{{message.messageClass}}"> 
                                            <i class="{{message.iconClass}}"></i>
                                        </span>
                                        {{message.title}}
                                        <span class="time">{{message.timeText}}</span>
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
                                <span class="badge">[[.TaskNumber]]</span>
                            </a>
                            <ul class="dropdown-menu extended tasks" ng-controller='TaskListController'>
                                <li>
                                    <p>[[.TaskSummary]]</p>
                                </li>
                                <li ng-repeat="task in tasks">
                                    <a href="{{task.action}}">
                                        <span class="task">
                                            <span class="desc">{{task.title}}</span>
                                            <span class="percent">{{task.percent}}</span>
                                        </span>
                                        <span class="{{task.progressClass}}">
                                            <span style="width: {{task.percent}};" class="bar"></span>
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
                                <img alt="" src="[[.UserIcon]]" class="etion-user-avatar">
                                <span class="username">[[.UserName]]</span>
                                <i class="icon-angle-down"></i>
                            </a>
                            <ul class="dropdown-menu" ng-controller='DropdownMenusController'>
                                <li ng-repeat="dmenu in dropdownmenus">
                                    <a href="{{dmenu.action}}">
                                        <i class="{{dmenu.iconClass}}"></i>
                                        {{dmenu.title}}
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <!-- END TOP NAVIGATION MENU --> 
                </div>
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
                        <a href="[[.HomeMenuAction]]" class="ajaxify"> 
                            <i class="icon-home"></i>
                            <span class="title">[[.HomeMenuName]]</span>
                        </a>
                    </li>
                    <li ng-repeat="menu in menus">
                        <a href="javascript:;"> 
                            <i class="{{menu.iconClass}}"></i>
                            <span class="title" ng-bind="menu.title"></span>
                            <span class="arrow"></span>
                        </a>
                        <ul class="sub-menu">
                            <li ng-repeat="child in menu.childs">
                                <a href="{{child.action}}" class="ajaxify">
                                    <i class="{{child.iconClass}}"></i>
                                    <span class="title" ng-bind="child.title"></span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="page-content">
                <div class="container-fluid">
                    <!-- BEGIN PAGE CONTAINER -->
                    <div class="row-fluid etion-page-content">[[.LayoutContent]]</div>
                    <!-- END PAGE CONTAINER --> </div>
            </div>
        </div>
        <!-- END CONTAINER -->
        <!-- BEGIN FOOTER -->
        <div class="footer">
            <div class="row-fluid text-center">
                <h5 class="inline">[[.copyright]]</h5>
                <div class="footer-tools">
                    <span class="go-top">
                        <i class="icon-angle-up"></i>
                    </span>
                </div>
            </div>
        </div>
        <!-- END FOOTER -->
        <script src="/static/scripts/loader.js" type="text/javascript"></script>
    </body>
</html>