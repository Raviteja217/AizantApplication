<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<title>AIZANT::Adduser</title>
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
	<div class="container" ng-app="imgApp" ng-controller="imgCtrl">
		<div id="signupbox"
			margin-top:50px" class="mainbox col-md-7 col-md-offset-3 col-sm-9 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading" >
							 <div class="panel-title"> <p><img alt="User Pic" 
									src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSAkfruQ08cqE2z_cXt2IgAtgmFUiyc_aq82Edt4SsOeybyJyE3"
									height="25" width="25" class="img-circle img-responsive" align="left"> &emsp;<span><b>Add User</b></span></span></p></div>
							
					</div>
				<div class="panel-body">
				 	 <div class="col-md-offset-1 col-lg-offset-1 col-md-10 col-lg-10 " >
					<c:url var="add_user" value="add_user"></c:url>
					<form:form commandName="User" method="post" action="store_user"
						enctype="multipart/form-data">
						<form:errors path="*" cssClass="errStyle" element="div" />
						<table class="table table-hover table-bordered">
							<tbody>
								<tr>
									<td><form:label path="pin">Pin Number : </form:label></td>
									<td><form:input path="pin" type="text" style="width:30%"
											placeholder="Enter Pin" class="form-control" /> <font
										color="red"><form:errors path="pin"></form:errors></font></td>
								</tr>
								<tr>
									<td><form:label path="firstName">First Name : </form:label></td>
									<td><form:input path="firstName" type="text"
											style="width:50%" placeholder="Enter FirstName"
											class="form-control" /> <font color="red"><form:errors
												path="firstName"></form:errors></font></td>
								</tr>
								<tr>
									<td><form:label path="lastName">Last Name : </form:label></td>
									<td><form:input path="lastName" type="text"
											style="width:50%" placeholder="Enter LastName"
											class="form-control" /> <font color="red"><form:errors
												path="lastName"></form:errors></font></td>
								</tr>
								<tr>
									<td><form:label path="username">User Name : </form:label></td>
									<td><form:input path="username" type="text"
											style="width:50%" placeholder="Enter UserName"
											class="form-control" /> <font color="red"><form:errors
												path="username"></form:errors></font></td>
								</tr>
								<tr>
									<td><form:label path="password">Password : </form:label></td>
									<td><form:input path="password" type="password"
											style="width:50%" placeholder="Enter Password"
											class="form-control" /> <font color="red"><form:errors
												path="password"></form:errors></font></td>
								</tr>
								<tr>
									<td><form:label path="email">Email : </form:label></td>
									<td><form:input path="email" type="email"
											style="width:50%" placeholder="Enter Email"
											class="form-control" /> <font color="red"><form:errors
												path="email"></form:errors></font></td>
								</tr>
								<tr>
									<td><form:label path="role">Role : </form:label></td>
									<td><form:select path="role" style="width:60%"
											class="form-control">
											<option value="ROLE_MONITOR/QA">ROLE_MONITOR/QA</option>
											<option value="ROLE_ADMIN">ROLE_ADMIN</option>
										</form:select></td>
								</tr>
								<tr>
									<td><form:label path="address">Address : </form:label></td>
									<td><form:textarea rows="2" cols="10" path="address"
											style="width:100%" placeholder="Enter Address"
											class="form-control" /> <font color="red"><form:errors
												path="address"></form:errors></font></td>
								</tr>

								<tr>
									<td><form:label path="img">Signature :</form:label></td>
									<td><form:input path="img" type="file" class="form-control"/> <font
										color="red"><form:errors path="img"></form:errors></font></td>
								</tr>
							</tbody>
						</table>
						<input type="submit" value="submit" class=" btn btn-primary" />
						&emsp;
						<input type="Reset" value="Reset" class="btn btn-info" />
					</form:form>
					<br>
					<div id="leftContainer">
						<a href="show_user"><span
							class="glyphicon glyphicon-menu-left"></span>Back</a>
					</div>
					<div id="rightContainer">

						<a href="Admin"><span class="glyphicon glyphicon-menu-left">Home</span></a>
					</div>
				</div>
			</div>
		</div>
	</div>




</body>

</html>