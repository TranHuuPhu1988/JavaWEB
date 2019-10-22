<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String username = request.getParameter("login");
		String password =request.getParameter("password");
		
		if(username.equals("phu") && password.equals("111")){
			response.sendRedirect("maytinh.jsp");
		}else{
			response.sendRedirect("login.jsp?kq=asas");
		}

	%>
</body>
</html>