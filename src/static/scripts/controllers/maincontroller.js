/**
 * 主菜单控制器
 * @param {[type]} $scope [description]
 */
function MainMenuController($scope,$http){
    $http.get('/Api/getMenus').success(function(data, status, headers, config) {
        $scope.menus = data;
    });
}

/**
 * 下拉菜控制器
 * @param {[type]} $scope [description]
 */
function DropdownMenusController($http,$scope){
    $http.get('/Api/getDropdownmenus').success(function(data, status, headers, config) {
        $scope.dropdownmenus = data;
    });
}

/**
 * 任务列表控制器
 * @param {[type]} $scope [description]
 */
function TaskListController($scope,$http){
    $http.get('/Api/getTasks').success(function(data, status, headers, config) {
        $scope.tasks = data;
    });
}

/**
 * 信息列表控制器
 * @param {[type]} $scope [description]
 */
function MessageController($http,$scope){
    $http.get('/Api/getMessages').success(function(data, status, headers, config) {
        $scope.messages = data;
    });
}
