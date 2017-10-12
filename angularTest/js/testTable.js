var app = angular.module("TestModuleTable",[]);

app.controller("tableData",function($scope,$http){
    
    $http.get("http://localhost/angularTestApi/public/user")
            .then(function(response){
                $scope.data = response.data.data;
                $scope.orderByKeys = Object.keys(response.data.data[0]);
            });
    $scope.setOrderBy = "update_date";
    $scope.setOrderReverse = false;
    $scope.orderByText = 'Desc'
    $scope.orderBy = function(x) {
        $scope.setOrderReverse = ($scope.setOrderBy == x)?! $scope.setOrderReverse : false
        if($scope.setOrderReverse) {
            $scope.orderByText = 'Desc';
        } else {
            $scope.orderByText = 'Asc';
        }
        $scope.setOrderBy = x;
    }
})