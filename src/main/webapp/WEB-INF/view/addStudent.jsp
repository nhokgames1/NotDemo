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
<script src="../resources/js/addStudentController.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body  >
	<div ng-app="myApp1" ng-controller="formCtrl" id="addUserDialog" style="display: block;"
		class="form-horizontal">
		
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">Name</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="txtfullname"
					ng-model='name' placeholder="FullName" value=""> <span
					style="font-size: 11px; color: red" id="errortxtfullname"></span>
			</div>
		</div>
		
		<div class="form-group">
			<label for="inputSubject" class="col-sm-2 control-label">Subject</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="txtstaffcode"
					ng-model='subject' placeholder="Subject"> <span
					style="font-size: 11px; color: red" id="errortxtstaffcode"></span>
			</div>
		</div>
		
		<div class="form-group">
			<label for="inputStart" class="col-sm-2 control-label">Start
				Day</label>
			<div class="col-sm-10">
				<input type="date" class="form-control" id="txtstaffcode"
					ng-model='startday' placeholder="Start day"> <span
					style="font-size: 11px; color: red" id="errortxtstaffcode"></span>
			</div>
			</div>
			
			<div class="form-group">
				<label for="inputEnd" class="col-sm-2 control-label">End day</label>
				<div class="col-sm-10">
					<input type="date" class="form-control" id="txtstaffcode"
						ng-model='endda' placeholder="End day"> <span
						style="font-size: 11px; color: red" id="errortxtstaffcode"></span>
				</div>
			</div>
		
		<button id="btnAddStudent1" ng-click="save()" class="btn btn-info btn-lg">Add</button>
	</div>
</body>
</html>