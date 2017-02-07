var app = angular.module('myApp', []);

app.controller('myCtrl', function($scope,$http) {
	 $scope.url  = 'http://localhost:8080/Student/student';
	 $http.get($scope.url).then(function(response) {
	 $scope.arrStudent = response.data;
	 $scope.user={};

	 //add user to server
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
	 //get user into field
	 $scope.selectUser=function(user){
	 	
	 	$scope.clickedUser= user;

	 }
			  	});
	 $scope.updateUser = function(user){
	 	$scope.user=user;
	 	console.log(user);
	 	$http({
	 		method: 'PUT',
	 		url: '/Student/update/'+user.id,
	 		data : $scope.user,
	 		headers : {'Content-Type': 'application/json'}

	 	})
	 }
	 //delete id
	 $scope.deleteUser=function(id){
	 	
	 	
	 	$http({
	 		method: 'DELETE',
	 		url: '/Student/delete/'+id,
	 		headers : {'Content-Type': 'application/json'}
	 	})

	 }
// app.controller('Add',function($scope) {
// 	$scope.user={};
// 	$scope.saveUser= function(){
// 		console.log($scope.user);
// 	}
// })	 

	});
