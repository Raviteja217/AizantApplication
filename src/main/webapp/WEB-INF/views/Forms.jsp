<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="n">
<head>
<base href="/AizantForms">
<title>AIZANT::Forms</title>
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



<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/angular_material/1.0.0/angular-material.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-animate.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-aria.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-messages.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angular_material/1.0.0/angular-material.min.js"></script>
<%--   <script
	src="<%=request.getContextPath()%>/resources/js/form_controller.js" /></script> --%>
<title>All Forms</title>
<style>
.allbody {
	border-style: double;
	margin: 30px;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
}

th {
	text-align: left;
}
</style>

</head>
<body>
	<%@ include file="/WEB-INF/views/template/header.jsp"%>
	<br>
	<br>
	<div class="allbody" ng-app="myApp" ng-controller="privilegersCtrl">
		<div id="container" style="width: 100%;">
			<a href="/AizantCaseReportApplication/Subject_Form"><span
				class="glyphicon glyphicon-menu-left">Back</span></a>
			<center align="center">
				<h2>Welcome To Aizant Drug Research Solutions</h2>
			</center>

			<table style="width: 30%" align="center">
				<tr>
					<th><center>S.No</center></th>
					<th><center>FORM NUMBER</center></th>
					<th><center>ACTION</center></th>
				</tr>
				<c:forEach items="${privileger}" var="list" varStatus="status">
					<tr>
						<td><center>${status.index + 1}</center></td>
						<td><center>${list.forms}</td>
						</center>
						<%-- <td><input type="button"<c:if test="${list.addflag == false}"><c:out value="disabled='disabled'"/></c:if>"></td> --%>
						<td><c:choose>
								<c:when test="${list.addflag == false}">
									<!-- <button name="btn1" disabled="disabled">Hello</button> -->
									<center>
										<a
											href="/AizantCaseReportApplication/${list.forms}?projectNo=${list.projectNo }&crfNo=${list.crfNo}">Add</a>
									</center>
								</c:when>
								<c:otherwise>
							
									&emsp;&emsp;&emsp;
									<a
										href="/AizantCaseReportApplication/edit_${list.forms}?projectNo=${list.projectNo }&crfNo=${list.crfNo}">Edit</a>
									&emsp;
									<a
										href="/AizantCaseReportApplication/view_${list.forms}?projectNo=${list.projectNo }&crfNo=${list.crfNo}">View</a>
								</c:otherwise>
							</c:choose></td>



						</td>
					</tr>

				</c:forEach>

				<%-- 	<tr>
			 <td>${$index+1}</td>
				<td>${privileger.forms}
				&emsp;&emsp; <a href="/AizantCaseReportApplication/${privileger.forms}?projectNo=${privileger.projectNo }&crfNo=${privileger.crfNo}">Add</a>
		 <a href="/AizantCaseReportApplication/edit_${privileger.forms}?projectNo=${privileger.projectNo }&crfNo=${privileger.crfNo}">Edit</a>
				 </td> 
				
				</tr> --%>

			</table>
			<br>
		</div>
	</div>

</body>
</html>