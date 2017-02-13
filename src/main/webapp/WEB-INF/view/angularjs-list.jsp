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
<script src="../resources/js/dropdown.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách Student</title>


</head>

<body ng-app="myApp" ng-controller="myCtrl">


	<div class="container">
	<!-- Header -->
	<div class="headerWrapper container-fluid fixed-navbar">
    <header style="padding: 15px 0px; height: 70px;">                
        <nav class="navbar navbar-default navbar-static-top hidden-sm hidden-md hidden-lg mainContainer">
            <div class="navbar-header">  
                <button type="button" class="navbar-toggle" ng-click="showNavMobile($event)" data-ga="" data-ga-action="click" data-ga-category="Header Navigation Mobile " data-ga-title="Open Mobile Nav Lnk">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="#" class="pull-left" data-ga="" data-ga-action="click" data-ga-category="Header Navigation" data-ga-title="Logo CF Img"><img class="cf-logo" src="../resources/img/cms_icon.png"></a>
                <a class="navbar-brand logo-text" data-ga="" data-ga-action="click" data-ga-category="Header Navigation " data-ga-title="Logo CF Img" href="#">                            
                    <span>Home</span>
                </a>
            </div>
        </nav>
        <nav class="navbar navbar-default navbar-static-top hidden-xs mainContainer" role="navigation">
            <div class="navbar-header">                             
                <a data-ga="" data-ga-action="click" data-ga-category="Header Navigation " data-ga-title="Logo CF Img" href="#" class="pull-left">
                    <img class="cf-logo" src="../resources/img/cms_icon.png" height="40" width="40">
                </a>
                <a class="navbar-brand logo-text" data-ga="" data-ga-action="click" data-ga-category="Header Navigation " data-ga-title="Logo CF Img" href="#">                            
                    <span>Content Management System</span>
                </a>                        
            </div>  
            <ul class="nav navbar-nav navbar-right">
                              
              
                </li>
                <li class="dropdown" data-ga="" data-ga-action="click" data-ga-category="Header Navigation " data-ga-title="Integrations">                   
                    <a href="javascript:void(0);" data-target="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">                        
                        <span class="account-setting">User Management</span>
                        <b class="caret"></b>
                    <div class="ripple-container"></div></a>
                    <ul class="dropdown-menu account-setting-menu">
                        <li><a href="#" data-ga="" data-ga-action="click" data-ga-category="Header Navigation " data-ga-title="Slack"> List</a></li>                                                                       
                        <li><a href="#" data-ga="" data-ga-action="click" data-ga-category="Header Navigation " data-ga-title="Balsamiq"> Add New</a></li>
                    </ul>
                </li>
               
                 <li class="dropdown" data-ga="" data-ga-action="click" data-ga-category="Header Navigation " data-ga-title="Integrations">                   
                    <a href="javascript:void(0);" data-target="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">                        
                        <span class="account-setting">Form Management</span>
                        <b class="caret"></b>
                    <div class="ripple-container"></div></a>
                    <ul class="dropdown-menu account-setting-menu">
                        <li><a href="#" data-ga="" data-ga-action="click" data-ga-category="Header Navigation " data-ga-title="Slack"> List</a></li>                                                                       
                        <li><a href="#" data-ga="" data-ga-action="click" data-ga-category="Header Navigation " data-ga-title="Balsamiq"> Add New</a></li>
                    </ul>
                </li>
              
               
               <li class="dropdown" data-ga="" data-ga-action="click" data-ga-category="Header Navigation " data-ga-title="Integrations">                   
                    <a href="javascript:void(0);" data-target="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">                        
                        <span class="account-setting">Account</span>
                        <b class="caret"></b>
                    <div class="ripple-container"></div></a>
                    <ul class="dropdown-menu account-setting-menu">
                       <li><a href="#" data-ga="" data-ga-action="click" data-ga-category="Header Navigation " data-ga-title="Slack"> Hello User</a></li>                                                                       
                        <li><a href="#" data-ga="" data-ga-action="click" data-ga-category="Header Navigation " data-ga-title="Balsamiq"> Log Out</a></li>
                    </ul>
                </li>

            </ul>
        </nav>              

    </header>             
</div>
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
						<td>{{student.startday  }}</td>
						<td>{{student.endday }}</td>
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
					ng-value="clickedUser.subject" placeholder="Subject"> 
			</div>
		</div>
		<br><br>
		<div class="form-group">
			<label for="inputStart" class="col-sm-2 control-label">Start
				Day</label>
			<div class="col-sm-10">
				<input type="text" class="form-control"
					ng-value="clickedUser.startday" placeholder="Start day"> 
			</div>
			</div>
			<br><br>
			<div class="form-group">
				<label for="inputEnd" class="col-sm-2 control-label">End day</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" 
						ng-value="clickedUser.enddday" placeholder="End day"> 
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