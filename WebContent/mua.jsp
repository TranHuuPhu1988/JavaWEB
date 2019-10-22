<%@page import="Bo.giohangbo"%>
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
		String masach = request.getParameter("ms");
		String tensach = request.getParameter("ts");
		String tacgia = request.getParameter("tg");
		String giasach = request.getParameter("gia");
		String soluong = request.getParameter("soluong");
		String kt = request.getParameter("kt");
		String ck = request.getParameter("ck");
		if(giasach !=null){
			long gia= Long.parseLong(giasach);
			giohangbo gh = null;
			if(session.getAttribute("gh")==null){
				gh = new giohangbo();
				session.setAttribute("gh",gh);
			}
			
			gh=(giohangbo)session.getAttribute("gh");
			
			
			
			if(Long.parseLong(kt) == 1){
				gh.Them(masach, tensach, tacgia, gia, 1);
			}else if(Long.parseLong(kt) == 2){
				gh.CapNhat(masach, tensach, tacgia, gia, Long.parseLong(soluong));
			}else if(Long.parseLong(kt) == 3){
				gh.Xoa(masach, tensach, tacgia, gia, Long.parseLong(soluong));
			}else if(Long.parseLong(ck) == 4){
				gh.Xoa(masach, tensach, tacgia, gia, Long.parseLong(soluong));
			}
			
			session.setAttribute("tb", gh);
			response.sendRedirect("htgio.jsp");
	
		}
	%>
</body>
</html>