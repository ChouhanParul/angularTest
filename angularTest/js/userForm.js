var app = angular.module("TestModuleForm",[])

app.controller("FromData",function($scope) {
    $scope.name = "Parul"
    $scope.changeInEmail = function() {
        $scope.name = "Neel"
    }
})


