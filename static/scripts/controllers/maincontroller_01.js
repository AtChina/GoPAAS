/**
 * 主菜单数据
 * @type {[type]}
 */
var menus = 
[
    { title:'组织架构',iconClass:'icon-sitemap',childs:[
         {title:'部门管理',iconClass:'icon-user-md',action:'/department/view'},                     
         {title:'人员管理',iconClass:'icon-user',action:'/emplyee/view'},                     
         {title:'角色管理',iconClass:'icon-group',action:'/roles/view'}
    ]},
    { title:'企业资讯',iconClass:'icon-pinterest',childs:[
         {title:'公告管理',iconClass:'icon-volume-up',action:'/information/announcement'},
         {title:'附件管理',iconClass:'icon-paper-clip',action:'/information/attachment'},
         {title:'评论管理',iconClass:'icon-comment',action:'/information/comment'},
         {title:'状态查看',iconClass:'icon-eye-open',action:'/information/status'}
    ]},                
    { title:'模块配置',iconClass:'icon-bookmark-empty',childs:[
         {title:'配置管理',iconClass:'icon-tags',action:'/modularize'},
         {title:'配置查看',iconClass:'icon-tag',action:'/modularize/view'}
    ]}, 
    { title:'表单配置',iconClass:'icon-table',childs:[
         {title:'配置管理',iconClass:'icon-th-large',action:'/forms/manager'},
         {title:'配置查看',iconClass:'icon-list-ol',action:'/forms'}
    ]},                
    { title:'地图配置',iconClass:'icon-map-marker',childs:[
         {title:'配置管理',iconClass:'icon-globe',action:'/webgis'},
         {title:'配置查看',iconClass:'icon-screenshot',action:'/webgis/view'}
    ]},                
    { title:'报表配置',iconClass:'icon-bar-chart',childs:[
         {title:'配置管理',iconClass:'icon-th',action:'/report'},
         {title:'配置查看',iconClass:'icon-list',action:'/report/view'}
    ]},                
    { title:'导入配置',iconClass:'icon-upload-alt',childs:[
         {title:'配置管理',iconClass:'icon-upload',action:'/import/manager'},
         {title:'配置查看',iconClass:'icon-reorder',action:'/import'}
    ]},                
    { title:'元数据源',iconClass:'icon-th',childs:[
         {title:'业务元数据',iconClass:'icon-book',action:'/metadata/business'},
         {title:'技术元数据',iconClass:'icon-sun',action:'/metadata/technology'},
         {title:'数据源管理',iconClass:'icon-barcode',action:'/metadata/datasource'},
         {title:'本地表管理',iconClass:'icon-wrench',action:'/metadata/localtable'},
         {title:'配置关系图',iconClass:'icon-random',action:'/metadata/relation'}
    ]},                
    { title:'监控调度',iconClass:'icon-time',childs:[
         {title:'实时监控',iconClass:'icon-facetime-video',action:'/supervision/monitor'}, 
         {title:'任务调度',iconClass:'icon-tasks',action:'/supervision/statistics'}, 
         {title:'报表调度',iconClass:'icon-retweet',action:'/supervision/tasks'}
    ]},                
    { title:'系统设置',iconClass:'icon-cogs',childs:[
         {title:'企业信息',iconClass:'icon-info-sign',action:'/system/entinfo'},
         {title:'终端主题',iconClass:'icon-android',action:'/system/theme'},
         {title:'离线文件',iconClass:'icon-download',action:'/system/outlinefile'},
         {title:'菜单管理',iconClass:'icon-list',action:'/system/menulist'},
         {title:'证书管理',iconClass:'icon-credit-card',action:'/system/certificate'},
         {title:'其他设置',iconClass:'icon-cog',action:'/system/setting'},
         {title:'帮助中心',iconClass:'icon-question-sign',action:'/system/question'}
    ]}                
];

/**
 * 下拉菜单数据
 * @type {Array}
 */
var dropdownmenus=[
   {title:'帐户信息',iconClass:'icon-user',action:'#'},
   {title:'日程管理',iconClass:'icon-calendar',action:'#'},
   {title:'电子邮件(3)',iconClass:'icon-envelope',action:'#'},
   {title:'我的任务',iconClass:'icon-tasks',action:'#'},
   {title:'切换系统',iconClass:'icon-exchange',action:'#'},
   {title:'注销登录',iconClass:'icon-off',action:'/'}
];

/**
 * 任务列表数据
 * @type {Array}
 */
var tasks=[
   {title:'New release v1.2',percent:'30%',progressClass:'progress progress-success',action:'#'}, 
   {title:'Application deployment',percent:'65%',progressClass:'progress progress-danger progress-striped active',action:'#'},
   {title:'Mobile app release',percent:'98%',progressClass:'progress progress-success',action:'#'},
   {title:'Database migration',percent:'10%',progressClass:'progress progress-warning progress-striped',action:'#'},
   {title:'Web server upgrade',percent:'58%',progressClass:'progress progress-info',action:'#'},
   {title:'Mobile development',percent:'85%',progressClass:'progress progress-success',action:'#'}
];

/**
 * 信息列表数据
 * @type {Array}
 */
var messages=[
    {title:'New user registered.',messageClass:'label label-success',iconClass:'icon-plus',timeText:'Just now',action:'#'},
    {title:'Server #12 overloaded.',messageClass:'label label-important',iconClass:'icon-bolt',timeText:'15 mins',action:'#'},
    {title:'Server #2 not respoding.',messageClass:'label label-warning',iconClass:'icon-bell',timeText:'22 mins',action:'#'},
    {title:'Application error.',messageClass:'label label-info',iconClass:'icon-bullhorn',timeText:'40 mins',action:'#'},
    {title:'Database overloaded 68%.',messageClass:'label label-important',iconClass:'icon-bolt',timeText:'Database overloaded 68%.',action:'#'},
    {title:'2 user IP blocked.',messageClass:'label label-important',iconClass:'icon-bolt',timeText:'5 hrs',action:'#'}
];

/**
 * 主菜单控制器
 * @param {[type]} $scope [description]
 */
function MainMenuController($scope){
    $scope.menus = menus;
}

/**
 * 下拉菜控制器
 * @param {[type]} $scope [description]
 */
function DropdownMenusController($scope){
    $scope.dropdownmenus = dropdownmenus;
}

/**
 * 任务列表控制器
 * @param {[type]} $scope [description]
 */
function TaskListController($scope){
    $scope.tasks = tasks;
}

/**
 * 信息列表控制器
 * @param {[type]} $scope [description]
 */
function MessageController($scope){
    $scope.messages = messages;
}
