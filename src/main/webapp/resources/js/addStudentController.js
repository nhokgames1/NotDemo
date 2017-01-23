var app = angular.module('myApp1', []);
app.controller('formCtrl', function($scope) {
	
/*function save(){
	console.log($scope.name);
	
}*/
$scope.save = function() {
	var name = $("#addUserDialog").find("#txtfullname").val();
	console.log($scope.name);
	
};
	
	
	

	
	
	
});