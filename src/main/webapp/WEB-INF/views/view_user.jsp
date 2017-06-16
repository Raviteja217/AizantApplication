<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">

<head>
<title>View User</title>
<link rel="stylesheet"
	href='<x:url value="/resources/css/bootstrap.min.css"></x:url>' />
<script src='<x:url value="/resources/js/jquery.min.js"></x:url>'></script>
<script src='<x:url value="/resources/js/bootstrap.min.js"></x:url>'></script>
<script src='<x:url value="/resources/js/angular.min.js"></x:url>'></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/viewuser.css" />
	<script
	src="<%=request.getContextPath()%>/resources/js/displaycontroller.js" /></script>
<style type="text/css">
body{padding-top:30px;}

.glyphicon {  margin-bottom: 10px;margin-right: 10px;}

small {
display: block;
line-height: 1.428571429;
color: #999;
}
</style>

</head>
<body>
	<%@ include file="/WEB-INF/views/template/header.jsp"%>
	<br>
	<br>
	<br>
	<br>
<%-- 	<div class="container" align="center">
		<div class="row">
			<div class="col-md-5  toppad  pull-right col-md-offset-3 ">
				<A href="#"><%=session.getAttribute("loggedInUser")%></A> <A
					href="${pageContext.request.contextPath}/Logout">Logout</A> <br>
			</div> --%>
<%-- 
			<div
				class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">


				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">${user.username}</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-3 col-lg-3 " align="center">
								<img alt="User Pic"
									src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSAkfruQ08cqE2z_cXt2IgAtgmFUiyc_aq82Edt4SsOeybyJyE3"
									class="img-circle img-responsive">
							</div>

							<div class=" col-md-9 col-lg-9 ">
								<table class="table table-user-information">
									<tbody>
										
										<tr>
											<td>User Name:</td>
											<td>${user.username}</td>
										</tr>
										<tr>
											<td>Authority</td>
											<td>${user.role}</td>
										</tr>

										<tr>
										<tr>
											<td>Email</td>
											<td>${user.email}</td>
										</tr>

									</tbody>
								</table>

								<a href="edit_user?id=${user.id}" class="btn btn-primary">EDIT</a>
								<a href="change_password?id=${user.id}" class="btn btn-primary">change Password</a>

							</div>
						</div>
					</div>
				</div>
			</div>
 --%>			
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-10 col-md-10">
            <div class="well well-sm">
                <div class="row">
                    <div class="col-sm-6 col-md-4">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxujXw33bsWlDMIitUJgYE0hZ2tTf8YoEgEliVbxW6ka8rIM43" alt="" class="img-rounded img-responsive" />
                    </div>
                    <div class="col-sm-6 col-md-8">
                        <h4>
                            ${user.username}</h4>
                        <i class="glyphicon glyphicon-map-marker">
                        </i>${user.address}
                        <p>
                            <i class="glyphicon glyphicon-envelope"></i>${user.email}
                            <br />
                            <i class="glyphicon glyphicon-star"></i>${user.pin}
                            <br />
                            <i class="glyphicon glyphicon-bookmark"></i>${user.role}</p>
                          <img
					src='<x:url value="/resources/images/${user.image}"/>' />
                            <%-- <tr>
				<td rowspan="8"><img
					src='<x:url value="/resources/images/${user.image}"/>' /></td>
			</tr> --%>
                        <!-- Split button -->
                        <div align="right">
                       	<a href="change_password?id=${user.id}" class="btn btn-primary">Change Password</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
		
</body>
</html>