<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
THERE IS DATA IN DATABASE

			<a
						href="Forms?projectNo=${privileger.projectNo }&crfNo=${privileger.crfNo}&userName=<%=session.getAttribute("loggedInUser")%>"
						value="submit" class="btn btn-primary">click here</a>
	</body>				
</html>