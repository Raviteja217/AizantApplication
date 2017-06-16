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

<script src="<%=request.getContextPath()%>/resources/js/deleteAssignForms.js" /></script>

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

	<div ng-app="myApp" ng-controller="AssignFormCtrl">
		<!-- <input type="text" class="form-control" ng-model="searchBy.name"/> -->

		<div class="container">
			<%-- div class="row"> <div
		class="col-md-5 toppad pull-right col-md-offset-3 "> <A
		href="#"><%=session.getAttribute("loggedInUser")%></A> <A
		href="${pageContext.request.contextPath}/Logout">Logout</A> <br>
		</div> --%>
			<div
				class="col-xs-8 col-sm-12 col-md-12 col-lg-12
		col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-0
		toppad">
				<div class="panel panel-info">
					<div class="panel-heading">
						<%-- <h3 class="panel-title">${user.username}</h3> --%>
						<div class="panel-title">
							<b>Assign Forms</b>
						</div>
						</span>

					</div>
					<div class="panel-body">
						<div>
							<div class="col-md-3 col-lg-3 " align="center"></div>
							<table class="table table-hover table-bordered">
								<tr>
									<th>PROJECT NUMBER</th>
									<th>CRF NUMBER</th>
									<th>FORMS</th>
									<th>ACTION</th>



								</tr>
								<tr ng-repeat="a in assignForms | filter:searchBy">
									<td>{{a.project_Number}}</td>
									<td>{{a.crfNo}}</td>
									<td>{{a.form}}</td>

									<td>
										<%-- <a
										href="${pageContext.servletContext.contextPath}/view_user?id={{a.id}}"><span
											class="glyphicon glyphicon-eye-open"></span></a> --%> <%-- <sec:authorize
									access="hasRole('ROLE_ADMIN')"> --%> <a
										href="${pageContext.servletContext.contextPath}/edit_assignForms?id={{a.id}}"><span
											class="glyphicon glyphicon-pencil"></span></a> <!-- Button to trigger modal -->

									
									<%-- <a
										href="${pageContext.servletContext.contextPath}/deleteAssignForms?id={{a.id}}"><span
										class="glyphicon glyphicon-trash"></span></a> --%>
														<a ng-click="openDeleteModal(a.id,a.crfNo,a.project_Number,a.form)"><span
										class="glyphicon glyphicon-trash" style="cursor: pointer;"></span></a>
									</td>

									</td>
								</tr>

							</table>

						</div>

						<div id="leftContainer">
							<a href="Admin"><span class="glyphicon glyphicon-menu-left">Back</span></a>
						</div>
						<div id="rightContainer">
							<a href="assign_forms"><span class="glyphicon glyphicon-plus"></span>click
								here to Assign Forms</a>
						</div>

					</div>


				</div>
			</div>
		</div>
	</div>

</body>
</html>