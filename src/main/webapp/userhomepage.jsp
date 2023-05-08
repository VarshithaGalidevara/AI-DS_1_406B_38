<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String username = (String)request.getAttribute("username");
%>
<h1 style="text-align: center;">Welcome <%= username %></h1>
<br>
<h2 style="text-align: center;">Select any 1 of the survey you wish to fill</h2>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","charan");
	System.out.println("db connected");
	PreparedStatement ps = con.prepareStatement("select * from fill_surveys");
	ResultSet rs = ps.executeQuery();
	
	while(rs.next())
	{%>
		<div class="container">
		<div class="card-header my-3">Available Surveys</div>
		<div class="row">
					<div class="col-md-3 my-3">
						<div class="card w-100" style="width: 18rem;">
						  <img src="<%=  %>" class="card-img-top" alt="...">
						  <div class="card-body">
						    <h5 class="card-title"><%= %></h5>
						    <a href="buy_products.jsp?prod_id=<%=  %>" class="btn btn-primary">Fill Now</a>
						  </div>
						</div>
					</div>
		</div>
		
	</div>
	<%}
%>
</body>
</html>