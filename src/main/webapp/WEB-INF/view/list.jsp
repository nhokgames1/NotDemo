<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../resources/css/jquery-ui.min.css">

<script src="../resources/js/jquery-1.11.3.min.js"></script>
<script src="../resources/js/jquery-ui.min.js"></script>
<script src="../resources/js/mustache.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="../resources/js/project.js"></script>

</head>
<body>
	<div id="listProject"></div>
	<div id="tplList" style="display: none;">
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
				<!--{{#list}}-->
				
				<tr>
					<td>{{id}}</td>
					<td>{{name}}</td>
					<td>{{subject}}</td>
					<td>{{startday}}</td>
					<td>{{endday}}</td>


					<td>
						<!--                            <button type="button" class="btn btn-primary btnaddOpp" data-id="{{id}}">Add Opp</button>
                                                        <button type="button" class="btn btn-primary btnlistProject" data-id="{{id}}">Projects</button>-->
						<button type="button" class="btn btn-primary btnDetail"
							data-id="{{staffId}}">View</button>
						<button type="button" class="btn btn-primary btnEditUser"
							data-id="{{staffId}}">Edit</button>
					</td>


				</tr>
				<!--{{/list}}-->
				<!--{{^list}}-->
				<tr>
					<td colspan="10" style="text-align: center;">No Record Found</td>
				</tr>
				<!--{{/list}}-->

			</tbody>
		</table>

	</div>
</body>
</html>