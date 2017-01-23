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

<script src="../resources/js/jquery-1.11.3.min.js"></script>
<script src="../resources/js/jquery-ui.min.js"></script>
<script src="../resources/js/angular.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/postApp.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body ng-app="postApp" ng-controller="postController">
<div class="container">
<div class="col-sm-8 col-sm-offset-2">
    <div class="page-header"><h1>Post data using angularJS</h1></div>
    <!-- FORM -->
    <form name="userForm" ng-submit="submitForm()">
    <div class="form-group">
        <label>Name</label>
        <input type="text" name="name" class="form-control" ng-model="user.name">
        <span ng-show="errorName">{{errorName}}</span>
    </div>
    <div class="form-group">
        <label>subject</label>
        <input type="text" name="username" class="form-control" ng-model="user.subject">
        <span ng-show="errorUserName">{{errorUserName}}</span>
    </div>
    <div class="form-group">
        <label>startday</label>
        <input type="date" name="email" class="form-control" ng-model="user.startday">
        <span ng-show="errorEmail">{{errorEmail}}</span>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</div>
</body>
</html>