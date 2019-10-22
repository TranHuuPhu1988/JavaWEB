<%@page import="Bean.giohangbean"%>
<%@page import="Bo.giohangbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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

<%
	if(session.getAttribute("gh")!=null){
		giohangbo gh = (giohangbo)session.getAttribute("gh");
		%>
			<tr><h1 align="center"> Giỏ Hàng</h1></tr>
		<table width='1000px' align="center" cellpadding="0" cellspacing="0" solid="1" class="table table-hover table-bordered">
		  <thead>
		    <tr scope="col">
		    	<th></th>
		      <th scope="col">Mã Sách</th>
		      <th scope="col">Tên Sách</th>
		      <th scope="col">Giá</th>
		      <th scope="col">Số Lượng</th>
		      
		      <th></th>
		      <th></th>
		    </tr>
		  </thead>
		   <tbody>
			<%for(giohangbean g:gh.ds){ %>
			<tr scope="col">
				<form action="mua.jsp">
				<td> <input type="checkbox" value="4" name="ck" ></input></td>
				
				<td><%=g.getMasach() %></td>
				<td><%=g.getTensach() %></td>
				<td><%=g.getGia() %></td>
				<td><%=g.getSoluong() %></td>
			
				<td>
							<input type="hidden" value="<%= g.getMasach()%>" name="ms">
							<input type="hidden" value="<%= g.getGia()%>" name="gia">
							<input type="number" min="1" max="10" value="<%=g.getSoluong()%>" name="soluong">
							<input type="hidden" value="2" name="kt">
							<input type="submit" value="Câpnhât">

				</td>
				<td>
							<input type="hidden" value="<%= g.getMasach()%>" name="ms">
							<input type="hidden" value="<%= g.getGia()%>" name="gia">
							<input type="hidden" value="<%=g.getSoluong()%>" name="soluong">
							<input type="hidden" value="3" name="kt">
							<input type="submit" value="Xoa">
						
				</td>
				
				</form>
			</tr>
			<%} %>
	  </tbody>
	  </table>
		<div align="center"><span>Tong: </span><%=gh.Tong() %></div>
	<%} %>

</body>
</html>


