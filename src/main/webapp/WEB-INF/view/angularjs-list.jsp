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
<script src="../resources/js/postApp.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Danh sách Student</title>


</head>

<body ng-app="myApp" ng-controller="myCtrl">

	<div>
		<h1>List student</h1>
		<!-- <div id="listProject"></div> -->
		  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Add Student</button>
		  
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
	<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModalEdit" ng-click="selectUser(student)">Edit</button>
	<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModalDelete">Delete</button>
							
						</td>
					</tr>
									</tbody>
			</table>

		</div>
<div id="myModalDelete" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Are you sure ?</h4>
      </div>
      <div class="modal-body">
       <strong style="color:red;">
       You are going to delete ... 
       </strong>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Yes</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
        
      </div>
    </div>

  </div>
</div>

		
<div id="myModalEdit" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        <form class="form-group" role="form" >
			<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">Name</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="txtfullname"
					ng-model="clickedUser.name" placeholder="FullName" > <span
					style="font-size: 11px; color: red" id="errortxtfullname"></span>
			</div>
		</div>
		
		<div class="form-group">
			<label for="inputSubject" class="col-sm-2 control-label">Subject</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="txtstaffcode"
					ng-model="clickedUser.subject" placeholder="Subject"> <span
					style="font-size: 11px; color: red" id="errortxtstaffcode"></span>
			</div>
		</div>
		
		<div class="form-group">
			<label for="inputStart" class="col-sm-2 control-label">Start
				Day</label>
			<div class="col-sm-10">
				<input type="date" class="form-control" id="txtstaffcode"
					ng-model="clickedUser.startday" placeholder="Start day"> <span
					style="font-size: 11px; color: red" id="errortxtstaffcode"></span>
			</div>
			</div>
			
			<div class="form-group">
				<label for="inputEnd" class="col-sm-2 control-label">End day</label>
				<div class="col-sm-10">
					<input type="date" class="form-control" id="txtstaffcode"
						ng-model="clickedUser.enddday" placeholder="End day"> <span
						style="font-size: 11px; color: red" id="errortxtstaffcode"></span>
				</div>
			</div>
			<div class="form-group">
			<label class="col-sm-2 control-label"></label>
			<div class="col-sm-10">
		<button type="submit"   ng-click="updateUser()" class="btn btn-info btn-lg">Save</button>
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        
      </div>
    </div>

  </div>
</div>

<!-- Modal Add -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Add User</h4>
      </div>
      <div class="modal-body">
     <!--Form to add-->
     
      <div  style="display: block;"
		class="form-horizontal">
		<form class="form-group" role="form" >
			<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">Name</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="txtfullname"
					ng-model="user.name" placeholder="FullName" > <span
					style="font-size: 11px; color: red" id="errortxtfullname"></span>
			</div>
		</div>
		
		<div class="form-group">
			<label for="inputSubject" class="col-sm-2 control-label">Subject</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="txtstaffcode"
					ng-model="user.subject" placeholder="Subject"> <span
					style="font-size: 11px; color: red" id="errortxtstaffcode"></span>
			</div>
		</div>
		
		<div class="form-group">
			<label for="inputStart" class="col-sm-2 control-label">Start
				Day</label>
			<div class="col-sm-10">
				<input type="date" class="form-control" id="txtstaffcode"
					ng-model="user.startday" placeholder="Start day"> <span
					style="font-size: 11px; color: red" id="errortxtstaffcode"></span>
			</div>
			</div>
			
			<div class="form-group">
				<label for="inputEnd" class="col-sm-2 control-label">End day</label>
				<div class="col-sm-10">
					<input type="date" class="form-control" id="txtstaffcode"
						ng-model="user.endday" placeholder="End day"> <span
						style="font-size: 11px; color: red" id="errortxtstaffcode"></span>
				</div>
			</div>
			<div class="form-group">
			<label class="col-sm-2 control-label"></label>
			<div class="col-sm-10">
		<button id="btnAddUser"  ng-click="saveUser()" class="btn btn-info btn-lg">Add</button>
		</form>
		</div>
		</div>
	</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
<!-- Modal -->


</body>
</html>