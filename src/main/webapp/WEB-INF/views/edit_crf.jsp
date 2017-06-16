<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Aizant::Edit CRF</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
#leftContainer {
	float: left;
}

#rightContainer {
	float: right;
}
</style>
</head>
<body ng-app="myApp" ng-controller="projectsCtrl">
<%@ include file="/WEB-INF/views/template/header.jsp"%>
	<br>
	<br>
	<br>
	<br>

	<div class="container">
		<div
			class="col-xs-12 col-sm-12 col-md-8 col-lg-5 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">
						<b>Edit CRF</b>
					</div>
				</div>
				<div class="panel-body">
					<div class="col-md-9 col-lg-11 ">

						<form:form modelAttribute="CrfNumber" method="post"
							action="update_crf ">
							<table class="table table-hover table-bordered">
								<tbody>
									<tr hidden>
										<td><form:label path="id">ID :</form:label></td>
										<td><form:input path="id" value="${crfNumber.id}"
												text="readonly" class="form-control" /></td>
									</tr>
									<tr>
										<td><form:label path="project_Number">Project Number :</form:label></td>
										<td><form:select path="project_Number"
												value="${crfNumber.project_Number}" text="readonly"
												class="form-control"><option value="${crfNumber.project_Number}">${crfNumber.project_Number}</option>
										<option ng-repeat="x in names" value="{{x.projectNo}}">{{x.projectNo}}</option></form:select></td>
									</tr>
									<tr>
										<td><form:label path="crf_Number">CRF Number :</form:label></td>
										<td><form:input path="crf_Number"
												value="${crfNumber.crf_Number}" text="readonly"
												class="form-control" /></td>
									</tr>

								</tbody>

							</table>
							<input type="submit" value="submit" class="btn btn-primary" />
						</form:form><br>
						<div id="leftContainer">
							<a href="show_crf"><span
								class="glyphicon glyphicon-menu-left"></span>Back</a>
						</div>
						<div id="rightContainer">

							<a href="Admin"><span class="glyphicon glyphicon-menu-left">Home</span></a>
						</div>
					</div>
				</div>

			</div>
		</div>

	</div>
		<script>
		var app = angular.module('myApp', []);
		app.controller('projectsCtrl', function($scope, $http) {
			$http.get("list1").then(function(response) {
				$scope.names = response.data;
			
			});
		});
	</script>
</body>
</html>