<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Example01" method="post">
Country:<select name=country>
<%
ArrayList<String> List =new <String>ArrayList();
List.add("India");
List.add("Pakistan");
List.add("others");
for(String country:List){
%>

	<option value="<%=country%>"><%=country%></option>;
<%}%>
</select>
<input type="submit" value="search"/>
<h1>Retrive table</h1>
<table border="1">
<tr><td>Cname</td>
<td>Mobno</td>
<td>Gender</td>
<td>Country</td></tr>
</table>
<%
ResultSet rs=(ResultSet)request.getAttribute("data");
if (rs!=null)
while(rs.next()){
%>
<tr>
<td><%=rs.getString("Cname") %></td>
<td><%=rs.getString("Mobno") %></td>
<td><%=rs.getString("Gender") %></td>
<td><%=rs.getString("Country") %></td>
</tr>
<%} %>
</form>
</body>
</html>