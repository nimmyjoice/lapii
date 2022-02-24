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
<form action="Customer1" method="post">
<select name="firstname">
<%
ArrayList<String> l=new <String>ArrayList();
l.add("nimmy");
l.add("johaan");
for(int i=0;i<l.size();i++){
	String n=l.get(i).toString();%>
	<option <%=n %>><%=n %></option>
	<% 
}%>
<input type="submit" value=" search"></br>

</select>
<h1>Retrived data</h1>
<table border="1">
<tr><td>customer_id</td>
<td>firstname</td>
<td>lastname</td>
<td>phone</td>
<td>email</td>
</tr>
<% 
ResultSet rs=(ResultSet)request.getAttribute("data");
if(rs!=null)
while(rs.next()){
%>
<tr><td><%=rs.getInt("customer_id") %></td>
<td><%=rs.getString("firstname") %></td>
<td><%=rs.getString("lastname") %></td>
<td><%=rs.getString("phone") %></td>
<td><%=rs.getString("email") %></td></tr>


<% } %>
</table>
</form>
</body>
</html>