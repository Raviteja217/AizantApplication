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

	<div ng-app="myApp" ng-controller="formCtrl">
		<!-- <input type="text" class="form-control" ng-model="searchBy.name"/> -->

		<div class="container">
			<%-- div class="row"> <div
		class="col-md-5 toppad pull-right col-md-offset-3 "> <A
		href="#"><%=session.getAttribute("loggedInUser")%></A> <A
		href="${pageContext.request.contextPath}/Logout">Logout</A> <br>
		</div> --%>
			<div
				class="col-xs-12 col-sm-12 col-md-6 col-lg-6
		col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3
		toppad">
				<div class="panel panel-info">
					<div class="panel-heading">
						<%-- <h3 class="panel-title">${user.username}</h3> --%>
						<div class="panel-title">
							<b> View CRFs</b>
						</div>
						</span>

					</div>
					<div class="panel-body">
						<div>
							<div class="col-md-3 col-lg-3 " align="center"></div>

							<table class="table table-hover table-bordered">
								<tr>
									<th>Project Number</th>

									<th>CRF Number</th>

									<th>Action</th>
								</tr>
								<tr ng-repeat="c in AZ_form3 | filter:searchBy">
									<td>{{c.projectNo}}</td>
									<td>{{c.crfNo}}</td>

									<td>
										<%-- <a href="${pageContext.servletContext.contextPath}/view_crf?id={{c.id}}"><span class="glyphicon glyphicon-eye-open"></span></a> --%>
										<a
										href="${pageContext.servletContext.contextPath}/AZ_Form_3_edit_angular?id={{c.id}}"><span
											class="glyphicon glyphicon-pencil"></span></a> <%-- <a
										href="${pageContext.servletContext.contextPath}/deletecrf?id={{s.id}}"><span
											class="glyphicon glyphicon-trash"></span></a> --%>
											<a ng-click="openDeleteModal(c.id,c.crf_Number,c.project_Number)"><span
										class="glyphicon glyphicon-trash" style="cursor: pointer;"></span></a>


									</td>
								</tr>

							</table>
						</div>

						<div align="right"></div>
						<div id="leftContainer">
							<a href="Admin"><span class="glyphicon glyphicon-menu-left"></span>Back</a>
						</div>
						<div id="rightContainer">

							<a href="create_crf"><span class="glyphicon glyphicon-plus"></span>
								click here to add CRF</a>
						</div>

					</div>


					<script>
					var app = angular.module('myApp', []);
					app.controller('formCtrl', function($scope, $http) {
						$http.get("list6").then(function(response) {
							$scope.AZ_form3 = response.data;
						});
					});
						
					</script>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
