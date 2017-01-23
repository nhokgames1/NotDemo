<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<link rel="stylesheet" type="text/css"
	href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/jquery-ui.min.css">

<script src="../resources/js/jquery-1.11.3.min.js"></script>
<script src="../resources/js/jquery-ui.min.js"></script>
<script src="../resources/js/mustache.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<table class="table table-bordered table-striped table hover">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Subject</th>
					<th>StartDay</th>
					<th>End</th>
				</tr>
			</thead>
			<tbody></tbody>
		</table>
	</div>
	<script>
	$.getJSON("http://localhost:8080/Student/student",function(data) {
		var items= [];
		$.each(data,function (key,val) {
			items.push("<tr>");
			items.push("<td id=''"+key+"''>"+val.id+"</td>");
			items.push("<td id=''"+key+"''>"+val.name+"</td>");
			items.push("<td id=''"+key+"''>"+val.subject+"</td>");
			items.push("<td id=''"+key+"''>"+val.startday+"</td>");
			items.push("<td id=''"+key+"''>"+val.endday+"</td>");
			items.push("</tr>");
			});
		$("<tbody/>",{ html: items.join("")}).appendTo("table");
	});
	</script>
</body>
</html>