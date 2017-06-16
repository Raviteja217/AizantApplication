<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
<style>
.errorblock {
	color: #ff0000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}

.logoutblock {
	color: blue;
	background-color: lightgreen;
	border: 3px solid blue;
	padding: 8px;
	margin: 16px;
}
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
	<br>
	<br>
	<br>
	<br>
<div>
	
		
	<h2>Change Password</h2>
<form modelAttribute="User" role="form" action="j_spring_security_check" method="post"
							id="login-form" autocomplete="off">

							<div style="margin-bottom: 25px" class="input-group" hidden>
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-user"></i></span> <input
									 type="text" name="username"
									value="<%=session.getAttribute("loggedInUser")%>" required />
							</div>

							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-lock"></i></span> <input
									class="form-control" id="password" type="password"
									name="password" placeholder="Password" required />
							</div>

							<div style="margin-top: 10px" class="form-group">
								<!-- Button -->

								<div class="col-sm-12 controls" align="center">
									<button class="btn btn-primary" type="submit">Submit</button>
									<button class="btn btn-primary" type="reset">Reset</button>

								</div>
							</div>

						</form>
						</div>
 <%-- <form:form modelAttribute="User" method="post" action="update_user1">
		<form:errors path="*" cssClass="errorblock" element="div" />
		<table class="table table-user-information">
			<tbody>
				<tr hidden>
					<td><form:label path="id">ID :</form:label></td>
					<td><form:input path="id" value="${user.id}" text="readonly" /></td>
				</tr>
				<tr hidden>
					<td><form:label path="username">User Name :</form:label></td>
					<td><form:input path="username" value="${user.username}"
							text="readonly" /></td>
				</tr>

				<tr>
					<td><form:label path="password">password:</form:label></td>
					<td><form:input type="text" path="password" value="${user.password }"
						 text="readonly"/></td>
				</tr>
				

				<tr hidden>
					<td><form:label path="email">Email:</form:label></td>
					<td><form:input path="email" value="${user.email}"
							text="readonly" /></td>
				</tr>
				<tr hidden>
					<td><form:label path="role">Authority:</form:label></td>
					<td><form:input path="role" value="${user.role}"
							text="readonly" /></td>
				</tr>
				<tr hidden>
					<td><form:label path="location">Location:</form:label></td>
					<td><form:input path="location" value="${user.location}"
							text="readonly" /></td>
				</tr>
				<tr hidden>
					<td><form:label path="website">Website:</form:label></td>
					<td><form:input path="website" value="${user.website}"
							text="readonly" /></td>
				</tr>
				<td><input type="submit" value="submit" /></td>
			</tbody>
		</table>
	</form:form> --%>
</body>
</html>