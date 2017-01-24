<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script src="../resources/js/student.js"></script> 
<script src="../resources/js/addStudent.js"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Danh sách Student</title>


</head>
<body ng-app="myApp" ng-controller="myCtrl">

	<div>
		<h1>List student</h1>
		<!-- <div id="listProject"></div> -->
		  <button id="btnAddStudent"class="btn btn-info btn-lg"><span class="glyphicon glyphicon-plus-sign"></span> Add Project</button>
		<div id="tplList">

			<table class="table table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Subject</th>
						<th>Start</th>
						<th>End</th>
						<th>Control</th>

					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="student in arrStudent">
						<td>{{student.id}}</td>
						<td>{{student.name}}</td>
						<td>{{student.subject}}</td>
						<td>{{student.startday}}</td>
						<td>{{student.endday}}</td>
						<td>
							<input type="button" class="btn btn-primary btnDetail"
								ng-model="id"  value="{{student.id}}" ng-click="Show">Get data </button>
							
						</td>
					</tr>
					<tr>
						<td colspan="10" style="text-align: center;">No Record Found</td>
					</tr>
				</tbody>
			</table>

		</div>
		

	</div>
</body>
</html>