<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<title>AIZANT::Add Privilegers</title>
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
.errStyle {
	color: red;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
<body>

	<%@ include file="/WEB-INF/views/template/header.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container" ng-app="myApp" ng-controller="PrivilegersCtrl">

		<div id="signupbox"
			margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Privilegers</div>
				</div>
				<div class="panel-body">

					<%-- 	<c:url var="create_privileger" value="create_privileger"></c:url>
					<form:form commandName="Privileger" method="post"
						action="store_privileger">
						<form:errors path="*" cssClass="errStyle" element="div" /> --%>
					<table class="table table-hover table-bordered">
						<tbody>


							<tr>
								<th>Project Number:</th>
								<td><select class="form-control" ng-model="projectNo">
										<option value="">SELECT</option>
										<!-- <option ng-repeat="p in projects" value="{{p.projectNo}}">{{p.projectNo}}</option> -->
										<option ng-repeat="p in projects" value="{{p}}">{{p}}</option>
								</select></td>
							</tr>
							<tr>
								<th>CRF NUMBER</th>
								<td><select class="form-control" ng-model="crfNo">
										<option value="">SELECT</option>
										<option ng-repeat="c in crf" value="{{c}}">{{c}}</option>
										<!-- <option ng-repeat="c in crfNumber" value="{{c.crf_Number}}">{{c.crf_Number}}</option>
 -->
								</select></td>

							</tr>



						</tbody>

					</table>

					<a
						href="data?projectNo={{projectNo}}&crfNo={{crfNo}}&userName=<%=session.getAttribute("loggedInUser")%>"
						value="submit" class="btn btn-primary">Submit</a>&emsp;&emsp; <input
						type="reset" value="reset" class="btn btn-info" />
					<%-- </form:form> --%>
				</div>
			</div>
		</div>
	</div>

	<script>
	var myApp = angular.module('myApp',[]);
	myApp.controller('PrivilegersCtrl',function ($scope,$http) {
	               
		$http.get("list").then(function(response) {
			$scope.users = response.data;
		});
		$http.get("listOfProjectsinPrivileges").then(function(response) {
			$scope.projects = response.data;
			console.log('hello',response.data)
		});
		$http.get("listOfCrfinPrivileges").then(function(response) {
			$scope.crf = response.data;
			console.log('hello',response.data)
		});
	
	            });
	</script>
	
</body>
</html>