var app = angular.module("TestModuleTable",[]);

app.controller("tableData",function($scope,$http){
    
    $http.get("http://localhost/angularTestApi/public/user")
            .then(function(response){
                $scope.data = response.data.data;
                $scope.orderByKeys = Object.keys(response.data.data[0]);
                console.log($scope.orderByKeys)
            });
    
    $scope.orderBy = function(x) {
        $scope.setOrderBy = x;
    }
})