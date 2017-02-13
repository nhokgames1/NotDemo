<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css"
	href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/login.css">	
<script src="../resources/js/jquery-1.11.3.min.js"></script>
<script src="../resources/js/jquery-ui.min.js"></script>
<script src="../resources/js/angular.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/login.js"></script> 
<script src="../resources/js/angular-route.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body ng-app="mainApp" ng-controller="loginCtrl">
<form action="/" id="myLogin">

	Username: <input type="text" name="username" id="username" ng-model="user.name"><br>
	Passowrd: <input type="text" name="password" id="password" ng-model="user.password">
	<button type="button" ng-click="submit()">Login</button>

</form>
</body>
</html>