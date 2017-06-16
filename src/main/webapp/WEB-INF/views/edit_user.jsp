
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

table {
	align: "center"
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


	<div class="container">
		<div class="row">
			<div class="col-md-5  toppad  pull-right col-md-offset-3 ">
				<%-- <A href="#"><%=session.getAttribute("loggedInUser")%></A> --%>
				<%-- 			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <A
					href="${pageContext.request.contextPath}/Logout">Logout</A> <br>  --%>
				<br>
			</div>
			<div
				class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">


				<div class="panel panel-info">
					<div class="panel-heading">
						<div class="panel-title">
							<p>
								<img alt="User Pic"
									src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSAkfruQ08cqE2z_cXt2IgAtgmFUiyc_aq82Edt4SsOeybyJyE3"
									height="25" width="25" class="img-circle img-responsive"
									align="left"> &emsp;<span><b>Edit User</b></span></span>
							</p>
						</div>

					</div>
					<div class="panel-body">
						<div class="row">


							<div class="col-md-offset-1 col-lg-offset-1 col-md-9 col-lg-10 ">

								<form:form modelAttribute="User" method="post"
									action="update_user " enctype="multipart/form-data">
									<table class="table table-hover table-bordered">
										<tbody>
											<tr hidden>
												<td><form:label path="id">ID :</form:label></td>
												<td><form:input path="id" value="${user.id}"
														class="form-control" text="readonly" /></td>
											</tr>
											<tr>
												<td style="width: 30%"><form:label path="pin">Pin :</form:label></td>
												<td><form:input path="pin" value="${user.pin}"
														class="form-control" text="readonly" /></td>
											</tr>
											<tr>
												<td><form:label path="username">User Name :</form:label></td>
												<td><form:input path="username" class="form-control"
														value="${user.username}" text="readonly" /></td>
											</tr>
											<tr>
												<td><form:label path="firstName">First Name :</form:label></td>
												<td><form:input path="firstName" class="form-control"
														value="${user.firstName}" text="readonly" /></td>
											</tr>
											<tr>
												<td><form:label path="lastName">Last Name :</form:label></td>
												<td><form:input path="lastName" class="form-control"
														value="${user.lastName}" text="readonly" /></td>
											</tr>

											<tr hidden>
												<td><form:label path="password">Password :</form:label></td>
												<td><form:input path="password" class="form-control"
														value="${user.password}" text="readonly" /></td>
											</tr>

											<tr>
												<td><form:label path="email">Email :</form:label></td>
												<td><form:input path="email" class="form-control"
														value="${user.email}" text="readonly" /></td>
											</tr>
											<tr>
												<td><form:label path="role">Role :</form:label></td>
												<%-- <td><form:input path="role" class="form-control"
														value="${user.role}" text="readonly" /></td> --%>
												<td><form:select path="role" style="width:80%"
														class="form-control">

														<%--  <select value="${user.role}">${user.role}</select> --%>



														<c:choose>
															<c:when test="${user.role} == {ROLE_MONITOR/QA}">
																<!-- <button name="btn1" disabled="disabled">Hello</button> -->
																<option value="${user.role}">${user.role}</option>
															 	 <option selected= "selected" value="ROLE_ADMIN">ROLE_ADMIN</option> 
															</c:when>
															</c:choose>
																<c:choose>
															<c:when test="${user.role} == {ROLE_ADMIN}">
																<option value="${user.role}">${user.role}</option>
																 <option value="ROLE_MONITOR/QA">ROLE_MONITOR/QA</option> 

															</c:when>
														</c:choose>
													</form:select></td>
											</tr>
											<tr>
												<td><form:label path="address">Address:</form:label></td>
												<td><form:input path="address" class="form-control"
														value="${user.address}" text="readonly" /></td>
											</tr>

											<tr>
												<td><form:label path="img">Signature :</form:label></td>
												<td><form:input path="img" type="file"
														class="form-control"
														value="/resources/images/${user.image}" /> <font
													color="red"><form:errors path="img"></form:errors></font></td>
											<tr>
										</tbody>
									</table>
									<input type="submit" value="submit" class="btn btn-primary" />
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
			</div>

		</div>
	</div>
</body>
</html>
