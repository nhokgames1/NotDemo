<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="plunker">
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
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/app.js"></script>
</head>
<body ng-controller="MainCtrl as mainCtrl">
    
    <form>
      <h2 class="text-primary">Angular update local storage single object</h2>
      <hr>
      <div class="form-group">
        <h3 class="text-success">Cats: Controller List</h3>
        <div ng-repeat="cat in mainCtrl.myCats">
          Name: <input type="text" ng-model="cat.name">
          Color: <input type="text"ng-model="cat.color">
        </div>
        
      </div>

      <button type="button" class="btn btn-success" ng-click="mainCtrl.saveToLocalStorage()">Save Changes</button>
    </form>
    
    <hr>
    <h3 class="text-info">This is what is stored</h3>
    <div class="form-group">
        <h3 class="text-success">Cats: Local Storage List</h3>
        <div ng-repeat="cat in mainCtrl.localStorage.cats">
          Name: <input type="text" ng-model="cat.name">
          Color: <input type="text"ng-model="cat.color">
        </div>
        
  </div>
  </body>
</html>