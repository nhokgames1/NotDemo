var app = angular.module('yeah', ['ngRoute']);

app.config(["$routeProvider", "$locationProvider", function($routeProvider, $locationProvider){
    $routeProvider
		.when("/", {
			templateUrl: "http://localhost:8080/Student/page1",
			controller: "MainCtrl"
		})
		.when("/page2", {
			templateUrl: "http://localhost:8080/Student/page2",
			controller: "SecondCtrl"
		})
		// .otherwise({ redirectTo: '/'})
		;
}]);

app.controller('MainCtrl', function($scope, srvShareData, $location) {
  
  $scope.dataToShare = [];
  
  $scope.shareMyData = function (myValue) {

    $scope.dataToShare = myValue;
    srvShareData.addData($scope.dataToShare);
    
    window.location.href = "http://localhost:8080/Student/page2";
  }
});

app.controller('SecondCtrl', function($scope, srvShareData) {
  
  $scope.sharedData = srvShareData.getData();

});

app.service('srvShareData', function($window) {
        var KEY = 'App.SelectedValue';

        var addData = function(newObj) {
            var mydata = $window.sessionStorage.getItem(KEY);
            if (mydata) {
                mydata = JSON.parse(mydata);
            } else {
                mydata = [];
            }
            mydata.push(newObj);
            $window.sessionStorage.setItem(KEY, JSON.stringify(mydata));
        };

        var getData = function(){
            var mydata = $window.sessionStorage.getItem(KEY);
            if (mydata) {
                mydata = JSON.parse(mydata);
            }
            return mydata || [];
        };

        return {
            addData: addData,
            getData: getData
        };
    });