<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/jquery-ui.min.css">

<script src="../resources/js/jquery-1.11.3.min.js"></script>
<script src="../resources/js/jquery-ui.min.js"></script>
<script src="../resources/js/angular.min.js"></script>
<script src="../resources/js/angular-route.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>

<script src="../resources/js/app.js"></script>
</head>
<body ng-app="plunker">

  
    <div ng-controller="MainCtrl">
  
      <p>Enter some data to share between Controllers:</p>
      <input ng-model="myValue" />
      <button ng-click="shareMyData(myValue)">Share now</button>
      
    </div>
    
  </body>
</html>