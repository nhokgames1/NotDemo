var app = angular.module('myApp', []);

app.controller('myCtrl', function($scope,$http) {
	 $scope.url  = 'http://localhost:8080/Student/student';
	 $http.get($scope.url).then(function(response) {
	 $scope.arrStudent = response.data;
	 $scope.user={};
	 $scope.saveUser = function() {
	 	console.log($scope.user)
	 	$http({
	 		method: 'POST',
        		url     : '/Student/add',
                data    : $scope.user, //forms user object
                headers : {'Content-Type': 'application/json'} 
	 	})
	 	.success(function(data){

	 	})
	 };	
	 $scope.selectUser=function(user){
	 	console.log(user);
	 	$scope.clickedUser= user;
	 }
			  	});
	 
// app.controller('Add',function($scope) {
// 	$scope.user={};
// 	$scope.saveUser= function(){
// 		console.log($scope.user);
// 	}
// })	 

	});
