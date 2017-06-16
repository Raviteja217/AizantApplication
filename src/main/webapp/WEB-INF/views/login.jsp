<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AIZANT::Login</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/Login.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style type="text/css">
.errorblock {
	color: #ff0000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}

.logoutblock {
	color: blue;
	background-color: lightgreen;
	border: 3px solid blue;
	padding: 8px;
	margin: 16px;
}
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/template/header2.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<c:if test="${error=='true'}">
			<div class="errorblock">Invalid credintial...</div>
		</c:if>
		<c:if test="${not empty logoutmsg }">
			<div class="logoutblock">
				<c:out value="${logoutmsg}" />
			</div>
		</c:if>
		<div class="container">
			<div id="loginbox" style="margin-top: 50px;"
				class="mainbox col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-1">
				<div class="panel panel-info">
					<div class="panel-heading">
						<div class="panel-title"><b>Sign In</b></div>
					</div>

					<div style="padding-top: 30px" class="panel-body">

						<div style="display: none" id="login-alert"
							class="alert alert-danger col-sm-12"></div>

						<!-- Login Form -->
						<form role="form" action="j_spring_security_check" method="post"
							id="login-form" autocomplete="off">

							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-user"></i></span> <input
									class="form-control" id="username" type="text" name="username"
									placeholder="Username" style="width:80%" required />
							</div>

							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-lock"></i></span> <input
									class="form-control" id="password" type="password"
									name="password" placeholder="Password" style="width:80%" required />
							</div>

							<div style="margin-top: 10px" class="form-group">
								<!-- Button -->

								<div align="left">
									<button class="btn btn-primary" type="submit">Submit</button>&emsp;
									<button class="btn btn-info" type="reset">Reset</button>

								</div>
							</div>

						</form>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>

</html>
