<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="ketqua.jsp" method='post'>
		a=<input type="number" name="txta" value=""> <br>
		b=<input type="number" name="txtb" value=""> <br>
		kq=<input type="number" name="txtkq" value=""> <br>
		<input type="submit" name="but1" value="+">
		<input type="submit" name="but1" value="-">
		<input type="submit" name="but1" value="*">
		<input type="submit" name="but1" value="/">
	</form>
	<%
		Long a,b,kq=(long)0;
		String aa=request.getParameter("txta");
		String bb=request.getParameter("txtb");
		String nut = request.getParameter("but1");
		
		if(aa !=null && bb!=null){
			 a = Long.parseLong(aa);
			 b = Long.parseLong(bb);
			
			 if(nut.equals("+"))
			 {
				 kq = a+b;
				 
			 }
			 if(nut.equals("-"))
			 {
				 kq = a-b;
				
			 }
			 if(nut.equals("*"))
			 {
				 kq = a*b;
				
			 }
			 if(nut.equals("/"))
			 {	
				 if(b==0){
					 out.print("<script>alert('botay');</script>");
				 }else{
					 kq = a/b;
				 }
				
			 }
			 out.print(kq);
		}
	%>
</body>
</html>