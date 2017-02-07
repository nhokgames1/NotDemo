<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<link rel="stylesheet" type="text/css"
	href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/login.css">	
<script src="../resources/js/jquery-1.11.3.min.js"></script>
<script src="../resources/js/jquery-ui.min.js"></script>
<script src="../resources/js/angular.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-7">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-lock"></span> Login</div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">
                            Email</label>
                        <div class="col-sm-9">
                            <input type="email" class="form-control" id="inputEmail3" placeholder="Email" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-3 control-label">
                            Password</label>
                        <div class="col-sm-9">
                            <input type="password" class="form-control" id="inputPassword3" placeholder="Password" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"/>
                                    Remember me
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group last">
                        <div class="col-sm-offset-3 col-sm-9">
                            <button type="submit" class="btn btn-success btn-sm">
                                Sign in</button>
                                 <button type="reset" class="btn btn-default btn-sm">
                                Reset</button>
                        </div>
                    </div>
                    </form>
                </div>
                <div class="panel-footer">
                    Not Registred? <a href="http://www.jquery2dotnet.com">Register here</a></div>
            </div>
        </div>
    </div>
</div>

</body>
</html>