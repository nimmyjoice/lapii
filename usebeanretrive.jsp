<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="con" class="servlet.Commonconnection"></jsp:useBean>
<%

String sql="SELECT * FROM REGISTER";
ResultSet rs=con.getConnection().createStatement().executeQuery(sql);%>
<table border="1">
<tr>
<td> ID</td>
<td>Username</td>
<td>Email</td>
</tr>
<% while(rs.next()){
%>
<tr>
<td><%=rs.getString("ID") %></td>
<td><%=rs.getString("NAME") %></td>
<td><%=rs.getString("EMAIL") %></td></tr>
<%
}
%>
</table>
</body>
</html>