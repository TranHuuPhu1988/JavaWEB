<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
			<form method='post' action='login.jsp'>
			TênđăngNhập : <input type='text' name='login' value='phu'></input><br>
			MậtKhẩu      : <input type='text' name='password' value='111'></input><br>
	
			<input type='submit' name='pass' value='login'></input>
		<% 
				String username = request.getParameter("login");
				String password = request.getParameter("password");
				if(username.equals("phu") && password.equals("111") ){
					out.print("");
				}else if(!username.equals("phu") || !password.equals("111")){
					out.print("");
				}	
		%>
		</form>

</body>
</html>