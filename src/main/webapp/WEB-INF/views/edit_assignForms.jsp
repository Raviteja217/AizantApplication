<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Aizant::Edit AssignForms</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<body>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
	<br>
	<br>
	<br>
	<br>

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
						<b>Edit Assign Form</b>
					</div>
				</div>
				<div class="panel-body">
					<div class="row">


						<div class=" col-md-9 col-lg-12 ">
							<form:form modelAttribute="AssignForms" method="post"
								action="update_assignForms">
								<table class="table table-hover table-bordered">
									<tbody>
										<tr hidden>
											<td><form:label path="id">ID :</form:label></td>
											<td><form:input path="id" value="${assignForms.id}"
													text="readonly" class="form-control" /></td>
										</tr>
										<tr>
											<td><form:label path="project_Number">Project Number :</form:label></td>
											<td><form:input path="project_Number"
													value="${assignForms.project_Number}" style="width:30%"
													text="readonly" class="form-control" /></td>
										</tr>

										<tr>
											<td><form:label path="crfNo">CRF Number:</form:label></td>
											<td><form:input path="crfNo" style="width:50%"
													value="${assignForms.crfNo}" text="readonly"
													class="form-control" /></td>
										</tr>
										<tr>
											<td><form:label path="form">Form:</form:label></td>
											<td><form:textarea path="form" rows="2"
													cols="25" value="${assignForms.form}"
													text="readonly" class="form-control" /></td>
										</tr>
																			</tbody>
								</table>
								<input type="submit" value="submit" class="btn btn-primary" />
								&emsp;
								<input type="reset" value="rest" class="btn btn-info" />
							</form:form>
							<br>

							<div id="leftContainer">
								<a href="show_assignForms"><span
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
</body>
</html>