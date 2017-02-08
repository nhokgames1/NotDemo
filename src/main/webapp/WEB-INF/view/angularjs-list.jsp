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


	<div class="container">
		<h1>List student</h1>
		
		<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModalAdd" ng-click="selectUser(student)">Add</button>
		  
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
						<td>{{student.startday | date }}</td>
						<td>{{student.endday  | date}}</td>
						<td>
	<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModalEdit" ng-click="selectUser(student)">Edit</button>
	<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModalDelete" ng-click="selectUser(student)">Delete</button>
							
						</td>
					</tr>
									</tbody>
			</table>

		</div>
		
		<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Are you sure ?</h4>
      </div>
      <div class="modal-body">
       <strong style="color:red;">
       You are going to delete {{clickedUser.name}}
       </strong>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" ng-click="deleteUser(clickedUser.id)">Yes</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
        
      </div>
    </div>

  </div>
</div>
		
<!-- Delete-->		
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
       You are going to delete {{clickedUser.name}}
       </strong>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" ng-click="deleteUser(clickedUser.id)">Yes</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
        
      </div>
    </div>

  </div>
</div>


<!-- Modal  Add-->
<div id="myModalAdd" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Add Something</h4>
      </div>
      <div class="modal-body">
    
  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="text" class="form-control" id="email" ng-model="user.name">
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="text" class="form-control" id="pwd" ng-model="user.subject">
  </div>
  <div class="checkbox">
   
  </div>
 <button id="btnAddUser"  ng-click="saveUser()" class="btn btn-info btn-lg">Add</button>
</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

<!--Edit -->		
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
				<input type="text" class="form-control" 
					ng-model="clickedUser.name" placeholder="FullName" > 
			</div>
		</div>
		<br><br><br>
			<div class="form-group">
			<label for="inputSubject" class="col-sm-2 control-label">Subject</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" 
					ng-model="clickedUser.subject" placeholder="Subject"> 
			</div>
		</div>
		<br><br>
		<div class="form-group">
			<label for="inputStart" class="col-sm-2 control-label">Start
				Day</label>
			<div class="col-sm-10">
				<input type="date" class="form-control"
					ng-model="clickedUser.startday" placeholder="Start day"> 
			</div>
			</div>
			<br><br>
			<div class="form-group">
				<label for="inputEnd" class="col-sm-2 control-label">End day</label>
				<div class="col-sm-10">
					<input type="date" class="form-control" 
						ng-model="clickedUser.enddday" placeholder="End day"> 
				</div>
			</div>
			<br>
		</form>
      </div>
      <div class="modal-footer">
      	<button type="button"  class="btn btn-default" ng-click="updateUser(clickedUser)"  data-dismiss="modal">Save</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>
    </div>

  </div>
</div>





</body>
</html>