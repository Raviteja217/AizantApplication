<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<title>AIZANT::Privilege s</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/Privileges_controller.js" /></script>
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
	<div class="container">
		<div id="signupbox"
			margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">
						<b>Create Privileges</b>
					</div>
				</div>
				<div class="panel-body">
			<form:form commandName="Privileger" method="post" action="store_privileger">

					<form:errors path="*" cssClass="errStyle" element="div" />
					<table class="table table-hover table-bordered">
						<tbody ng-app="myApp" ng-controller="PrivilegesCtrl">
							<tr>
								<th>User Name:</th>
								<td><form:select class="form-control" path="userName">
										<option value="">SELECT</option>
										<option ng-repeat="x in users" value="{{x.username}}">{{x.username}}</option>
								</form:select></td>
							</tr>
							<tr>
								<th>Project Number:</th>
								<td><form:select class="form-control" path="projectNo"
									>
										<option value="">SELECT</option>
										<option ng-repeat="p in projects" value="{{p}}">{{p}}</option>
								</form:select></td>
							</tr>
							
							<tr>
								<th>CRF Number</th>
								<td><form:select path="crfNo"  class="form-control">
										<option value="">SELECT</option>
										<option ng-repeat="c in crf" value="{{c}}">{{c}}</option>
								</form:select></td>
							</tr>
							<tr>
								<th>Forms</th>
								<td><form:select class="form-control" path="forms" multiple="multiple">
									
										<option ng-repeat="f in forms" value="{{f.forms}}">{{f.forms}}</option>
								</form:select></td>
							</tr>



						</tbody>

					</table>
			<input type="submit" value="submit" class=" btn btn-primary" />
						&emsp;
						<input type="Reset" value="Reset" class="btn btn-info" />
						</form:form>
					&emsp;
					<!-- <input type="reset" value="reset" class="btn btn-info" /><br> -->
					<br>
					<div id="leftContainer">
						<a href="Admin"><span class="glyphicon glyphicon-menu-left"></span>Home</a>
					</div>
					<div id="rightContainer">

						<a href="show_privilegers"><span
							class="glyphicon glyphicon-menu-left"></span> Back</a>
					</div>

				</div>
			</div>
		</div>
	</div>
<!-- <script>
var myApp = angular.module('myApp',[]);
myApp.controller('PrivilegesCtrl',function ($scope,$http) {
               
	$http.get("list").then(function(response) {
		$scope.users = response.data;
	});
	$http.get("listOfProjects").then(function(response) {
		$scope.projects = response.data;
		console.log('hello',response.data)
	});
	$http.get("listOfCrf").then(function(response) {
		$scope.crf = response.data;
		console.log('hello',response.data)
	});
       });
</script> -->



</body>
</html>
