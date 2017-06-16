<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>alert message</title>
</head>
<br>
<br>
<body ng-app=" ">

	<div class="container">

		<div id="signupbox"
			margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title"></div>
				</div>
				<div class="panel-body">

					<%-- 	<c:url var="create_privileger" value="create_privileger"></c:url>
					<form:form commandName="Privileger" method="post"
						action="store_privileger">
						<form:errors path="*" cssClass="errStyle" element="div" /> --%>
					<table class="table table-hover table-bordered">
						<tbody>



							<h4>
								<center>There is no data available in MainTable for the
									selected  
								            
						 
							<%
								String projectNo = request.getParameter("projectNo");
								String crfNo = request.getParameter("crfNo");
								String userName = request.getParameter("userName");
							%> 
								 ProjectNumber :
							 <font color="blue"><%=projectNo%></font> <br />  CRF Number : <font color="blue"><%=crfNo%></font><br /> User : <font color="blue"><%=userName%></font><br /></center></h4>
						

		<%-- 					    <div>  <form action="Subject_Form" method="get">
								<%
									String b = request.getParameter("mypro");
									out.println("ProjectNumber " + b);
								%>
								<br />
								<%
									String c = request.getParameter("mycrf");
									out.println("CRF Number " + c);
								%> --%>
							</form> 
						
							</div>
						</tbody>

					</table>

					<center>
						<a href="Subject_Form" value="submit" class="btn btn-primary">Ok</a>
					</center>

					<%-- </form:form> --%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>