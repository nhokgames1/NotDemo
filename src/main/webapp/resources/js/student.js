var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope,$http) {
	 $scope.url  = 'http://localhost:8080/Student/student';
	 $http.get($scope.url).then(function(response) {
	 $scope.arrStudent = response.data;
			  	});
	});
