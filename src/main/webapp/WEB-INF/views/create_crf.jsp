<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<title>AIZANT::Add CRF</title>
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
	<!-- ng-app="myApp" ng-controller="myController" -->


<%@ include file="/WEB-INF/views/template/header.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<div class="container" ng-app="myApp" ng-controller="projectsCtrl">
		<div id="signupbox"
			margin-top:50px" class="mainbox col-md-5 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">
						<b>Create CRF</b>
					</div>
				</div>
				<div class="panel-body">
					<form:form commandName="CrfNumber" method="post" action="store_crf">

						<table class="table table-hover table-bordered">
							<tr>
								<td>Project Number:</td>
								<td><form:select path="project_Number" style="width:58%"
										class="form-control">
										<option value="">SELECT</option>
										<option ng-repeat="x in names" value="{{x.projectNo}}">{{x.projectNo}}</option>
									</form:select></td>
							</tr>

							<tr>
								<td>CRF Number:</td>
								<td><form:input path="crf_Number"
										ng-repeat="x in random_array" name="point{{$index}}"
										style="width:58%" class="form-control" /><br> <br> <span
									ng-click="add_input()" class="glyphicon glyphicon-plus"><b>ADD</b></span>&emsp;
									<span
									ng-click="remove_input()" class="glyphicon glyphicon-minus"><b>REMOVE</b></span></td>
							</tr>
						</table>
						<input type="submit" value="submit" class="btn btn-primary" />
						&emsp;
						<input type="reset" value="Reset" class="btn btn-info" />
					</form:form>
<br>
					<div id="leftContainer">
						<a href="show_crf"><span class="glyphicon glyphicon-menu-left"></span>Back</a>
					</div>
					<div id="rightContainer">

						<a href="Admin"><span class="glyphicon glyphicon-menu-left">Home</span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- <script>
			var app = angular.module("myApp", []);
			app.controller("myController", [ "$scope", function($scope) {
				$scope.random_array = [ 0 ]
				$scope.add_input = function() {
					var i = $scope.random_array.length
					$scope.random_array.push(i)
				}
			} ]);
		</script> -->
	<script>
		var app = angular.module('myApp', []);
		app.controller('projectsCtrl', function($scope, $http) {
			$http.get("list1").then(function(response) {
				$scope.names = response.data;
				$scope.random_array = [ 0 ]
				$scope.add_input = function() {
					var i = $scope.random_array.length
					$scope.random_array.push(i)
				}
				$scope.remove_input = function() {
					var i = $scope.random_array.length
					$scope.random_array.pop(i)
				}
			});
		});
	</script>
	</div>



</body>
</html>