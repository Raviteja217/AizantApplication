<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Aizant::EditUser</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
	#leftContainer {
	float: left;
}

#rightContainer {
	float: right;
}</style>
</head>
<body>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="mainbox col-md-7 col-md-offset-3 col-sm-9 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<%-- <h3 class="panel-title">${user.username}</h3> --%>
					<div class="panel-title">
						<b>Edit Project</b>
					</div>
				</div>
				<div class="panel-body">
					<div>


						<div class="col-md-offset-1 col-lg-offset-1 col-md-10 col-lg-10 ">
							<form:form modelAttribute="CreateProject" method="post"
								action="update_project">
								<table class="table table-hover table-bordered">
									<tbody>
										<tr hidden>
											<td><form:label path="id">ID :</form:label></td>
											<td><form:input path="id" value="${createProject.id}"
													text="readonly" class="form-control"/></td>
										</tr>
										<tr>
											<td><form:label path="projectNo">Project Number :</form:label></td>
											<td><form:input path="projectNo"
													value="${createProject.projectNo}" style="width:30%"
													text="readonly" class="form-control"/></td>
										</tr>

										<tr>
											<td><form:label path="projectDes">Project Description:</form:label></td>
											<td><form:textarea path="projectDes" rows="2" cols="25"
													value="${createProject.projectDes}" text="readonly" class="form-control"/></td>
										</tr>

									</tbody>

								</table>
								<input type="submit" value="submit" class=" btn btn-primary" />
							</form:form><br>
							<div id="leftContainer">
						<a href="show_projects"><span
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

	</div>
	</div>
</body>
</html>