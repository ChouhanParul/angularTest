var app = angular.module("TestModule1",[])

app.controller("TestController",function ($scope) {
    $scope.FirstName = "Parul";
    $scope.LastName = "Chouhan";
    $scope.users = [
        {
            FirstName : "Parul",
            LastName  : "Chouhan"
        },
        {
            FirstName : "Pawan",
            LastName  : "Nirwan"
        }
    ];
})

app.controller("TestController1",function ($scope) {
    $scope.FirstName = "Parul";
    $scope.LastName = "Chouhan";
    $scope.fullName = function() {
        return $scope.FirstName+" "+$scope.LastName;
    }
})


