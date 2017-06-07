<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<html>
<head>
<link rel="stylesheet"
	href='<x:url value="/resources/css/bootstrap.min.css"></x:url>' />
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
}

container {
	padding: 25cm;
	margin-top: 5cm;
	margin-bottom: 5cm;
}
</style>
</head>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<br>
<br>
<br>
<br>
<body>
	<%--  <h1>Welcome... <%=session.getAttribute("loggedInUser")%></h1>
    <div class="container"> --%>


	<!-- <input type="text" class="form-control" ng-model="searchBy.name"/> -->
	<div class="container">
		<%-- div class="row"> <div
		class="col-md-5 toppad pull-right col-md-offset-3 "> <A
		href="#"><%=session.getAttribute("loggedInUser")%></A> <A
		href="${pageContext.request.contextPath}/Logout">Logout</A> <br>
		</div> --%>
		<div>
			<div
				class="col-xs-8 col-sm-8 col-md-6 col-lg-0
		col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3
		toppad">
				<div class="panel panel-info">
					<div class="panel-heading">
						<%-- <h3 class="panel-title">${user.username}</h3> --%>
						<div class="panel-title">WELCOME TO ADMIN</div>
						</span>

					</div>
					<div class="panel-body">
						<div>
							<div align="center"></div>

							<table class="table table-hover table table-bordered ">
								<tr>
									<td><a href="show_user">Users & Details</a></td>
									<td><a href="show_assignForms">Assign Forms</a></td>

								</tr>
								<tr>
									<td><a href="show_projects">Create Projects</a></td>
									<td><a href="show_mainReports">Main Form</a></td>

									<!-- <a href="create_mainReport">create report</a>
 -->
								</tr>
								<tr>
									<td><a href="show_crf">Assign CRF's</a></td>
									<td><a href="show_privilegers">Privileges</a></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>