<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3"
	ng-app="myApp">
<head>
<title>AIZANT::AllUsers</title>
<link rel="stylesheet"
	href='<x:url value="/resources/css/bootstrap.min.css"></x:url>' />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/display_user.css" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">



<!-- Bootstrap modals -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/ui-bootstrap-custom-2.5.0-csp.css" />
<script
	src="<%=request.getContextPath()%>/resources/js/ui-bootstrap-custom-2.5.0.min.js" /></script>
<script
	src="<%=request.getContextPath()%>/resources/js/ui-bootstrap-custom-tpls-2.5.0.min.js" /></script>

<script
	src="<%=request.getContextPath()%>/resources/js/deleteProject.js" /></script>

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
#leftContainer {
	float: left;
}
#rightContainer {
	float: right;
}
</style>
</head>

<body>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
	<br>
	<br>
	<br>
	<br>

	<%--  <h1>Welcome... <%=session.getAttribute("loggedInUser")%></h1>
    <div class="container"> --%>

	<div ng-app="myApp" ng-controller="projectsCtrl">
		<!-- <input type="text" class="form-control" ng-model="searchBy.name"/> -->

		<div class="container">
			<div
				class="col-xs-12 col-sm-12 col-md-6 col-lg-6
		col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3
		toppad">
				<div class="panel panel-info">
					<div class="panel-heading">
						<%-- <h3 class="panel-title">${user.username}</h3> --%>
						<div class="panel-title"><b>Projects</b></div>
						</span>

					</div>
					<div class="panel-body">
						<div>
							<div class="col-md-3 col-lg-3 " align="center"></div>

							<table class="table table-hover table-bordered">
								<tr>
									<th>Project Number</th>

									<th>Project Description</th>

									<th>Action</th>
								</tr>
								<tr ng-repeat="x in projects | filter:searchBy">
									<td>{{x.projectNo}}</td>
									<td>{{x.projectDes}}</td>

									<td>
										<%-- <a href="${pageContext.servletContext.contextPath}/viewproduct?id={{x.id}}"><span>View</span></a>
     --%> <a
										href="${pageContext.servletContext.contextPath}/edit_project?id={{x.id}}"><span
											class="glyphicon glyphicon-pencil"></span></a> <%-- <a
										href="${pageContext.servletContext.contextPath}/delete?id={{x.id}}"><span
											class="glyphicon glyphicon-trash"></span></a> --%>
											<a ng-click="openDeleteModal(x.id,x.projectNo)"><span
										class="glyphicon glyphicon-trash" style="cursor: pointer;"></span></a>


									</td>
								</tr>

							</table>
							
						</div>
					
						<div align="right" ></div>
<div id="leftContainer">
						<a href="Admin"><span
							class="glyphicon glyphicon-menu-left"></span>Back</a>
					</div>
					<div id="rightContainer">

<a href="create_project" ><span class="glyphicon glyphicon-plus"></span> click here to add Project</a>					</div>

						</div>


						<script>
						
						</script>
					</div>
					</div>
					</div>
					</div>
				
</body>
</html>
