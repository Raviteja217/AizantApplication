<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<title>AIZANT::AddMainForm</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
<script
	src="<%=request.getContextPath()%>/resources/js/moment.min.js" /></script> 
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script> <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>



<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/angular_material/1.0.0/angular-material.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-animate.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-aria.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-messages.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angular_material/1.0.0/angular-material.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/mainForm_Controller.js" /></script>
<style type="text/css">
.errStyle {
	color: red;
	font-style: italic;
	font-weight: bold;
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
	<div class="container" ng-app="myApp" ng-controller="formCtrl">
		<div id="signupbox"
			margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title"><b>Main Form</b></div>
				</div>
				<div class="panel-body">

				
					<form ng-submit="mainForms()">
						
						<table class="table table-hover table-bordered">
							<tbody>
								<tr>
									<td><label path="projectNo">Project Number </label></td>
									<td><select type="text" class="form-control" ng-model="mainForm.projectNo"
											style="width:50%" >
											<option value="">SELECT</option>
										<option ng-repeat="x in names" value="{{x.projectNo}}">{{x.projectNo}}</option>
											</select> </td>
								</tr>
								<tr>
									<td><label path="crfNo">CRF Number</label></td>
									<td><input type="text" style="width:50%" class="form-control" ng-model="mainForm.crfNo"/>
										</td>
								</tr>
								<tr>
									<td><label path="projectTitle">ProjectTitle </label></td>
									<td><textarea rows="2" cols="25"
											style="width:75%" class="form-control" ng-model="mainForm.projectTitle"></textarea> </td>
								</tr>
								<tr>
									<td><label path="protocolNo">Protocol Number </label></td>
									<td><input type="text"
											style="width:50%" class="form-control" ng-model="mainForm.protocolNo"/></td>
								</tr>
								<tr>
									<td><label path="protocolVersion">Protocol Version </label></td>
									<td><input type="text"
											style="width:50%" class="form-control" ng-model="mainForm.protocolVersion"/></td>
								</tr>
								<tr>
									<td><label path="periodNo"> Period Number </label></td>
									<td><input type="text"
											style="width:20%" class="form-control" ng-model="mainForm.periodNo"/></td>
								</tr>
								<tr>
									<td><label path="registrationNo">Registration Number  </label></td>
									<td><input type="text" value="R"
											style="width:30%" class="form-control" ng-model="mainForm.registrationNo"/> </td>
								</tr>
								<tr>
									<td><label path="subjectNo"> Subject Number </label></td>
									<td><input type="text"
											style="width:20%" class="form-control" ng-model="mainForm.subjectNo"/> </td>
								</tr>

								
							</tbody>
						</table>
					<input type="submit" value="submit" class="btn btn-primary" />&emsp;
								<input type="reset" value="reset" class="btn btn-info" />
					</form><br>
						<div id="leftContainer">
									<a href="show_mainReports"><span
										class="glyphicon glyphicon-menu-left"></span>Back</a>
								</div>
								<div id="rightContainer">

									<a href="Admin"><span
									class="glyphicon glyphicon-menu-left"></span>Home</a>
								</div>

				</div>
			</div>
		</div>
	</div>


<!-- <script>
		var app = angular.module('myApp', []);
		app.controller('formCtrl', function($scope, $http) {
			$http.get("list1").then(function(response) {
				$scope.names = response.data;
			});
		});
	</script> -->

</body>
</html>