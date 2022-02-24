<%@page import="java.util.*"%>
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
<form action ="Example01" method="post">
<select name ="country"><%! int i=0; %>
<% List li= new ArrayList(); 
li.add("india");
li.add("pakistan");
li.add("others");
for(i=0;i<li.size();i++){
	String c=li.get(i).toString();
	

%>
<option value="<%=c%>"><%=c %> </option>	
<%
} 
%> 
</select>
<input type="submit" value="search"/>


<h1>retrive table</h1>
<table border="1">
<tr>
<td>Cname</td>

<td>Mobno</td>

<td>Gender</td>
<td>Country</td>
</tr>
<%
ResultSet rs=(ResultSet)request.getAttribute("data");
if(rs!=null)
	while(rs.next()){
		%>
		<tr>
		<td><%=rs.getString("Cname") %></td>
	
		<td><%=rs.getString("mobno") %></td>
		<td><%=rs.getString("Gender") %></td>
	
		<td><%=rs.getString("Country") %></td>
			</tr>
		<%
		}
%>
</table>
</form>
</body>
</html>