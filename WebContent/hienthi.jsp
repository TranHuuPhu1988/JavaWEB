<%@page import="java.util.ArrayList"%>
<%@page import="Bean.SachBean"%>
<%@page import="Bo.SachBo"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="Bo.giohangbo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<%	long sl=0,tt=0;
	giohangbo g1 = (giohangbo)session.getAttribute("gh");
	if(g1!=null){
		sl=g1.ds.size();
		tt=g1.Tong();
	}
%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
	    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
	      <li class="nav-item ">
	        <a class="nav-link text-primary" href="hienthi.jsp">Trang Chủ</a>
	      </li>
	      <li class="nav-item text-warning">
	        <a class="nav-link text-warning" href="htgio.jsp">Giỏ Hàng<%=sl %>:<%=tt %></a>
	      </li>
	    </ul>

	        <a class="nav-link" href="login.jsp">
	        	<button type="button" class="btn btn-primary">Login</button>
	        </a>
			<a class="nav-link" href="hienthi.jsp">
				<button type="button" class="btn btn-warning">Logout</button>
			</a>
			
	  </div>
	</nav>

	<table width='1000' align="center">
<%
	SachBo sach = new SachBo();
	ArrayList<SachBean> ds = sach.getDS();
	int ss=ds.size();
	for(int i=0;i<ss;i++){
		SachBean s = ds.get(i);
%>

	<tr>
		<td><img alt="" src="<%=s.getAnhSach()%>"><br>
			<%=s.getMaSach() %><br>
			<%=s.getTenSach() %><br>
			<%=s.getTacGiaSach() %><br>
			<%=s.getGiaSach() %><br>
			<a href="mua.jsp?ms=<%=s.getMaSach()%>&ts=<%=s.getTenSach()%>&tg=<%=s.getTacGiaSach()%>&gia=<%=s.getGiaSach()%>&kt=1"><img src='mua.jpg'></a>
		</td>
		<%i++; if(i<ss){s=ds.get(i); %>
		<td><img alt="" src="<%=s.getAnhSach()%>"><br>
			<%=s.getMaSach() %><br>
			<%=s.getTenSach() %><br>
			<%=s.getTacGiaSach() %><br>
			<%=s.getGiaSach() %><br>
			<a href="mua.jsp?ms=<%=s.getMaSach()%>&ts=<%=s.getTenSach()%>&tg=<%=s.getTacGiaSach()%>&gia=<%=s.getGiaSach()%>&kt=1"><img src='mua.jpg'></a><hr>
		</td>
		<%} %>
	</tr>
<%} %>
</table>
	
</body>
</html>