<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array"%>
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
Cname : <input type="text" name="cname" /><br/>
Mob no: <input type ="text" name="mobno"><br/>
Gender :<select name="Gender"> 
<option>Male</option>
<option>Female</option>
</select><br/>
Country: <select name=country>
<%
ArrayList <String> list=new <String>ArrayList();
list.add("india ");
list.add("pakistan");
list.add("others");

for(String country:list){%>
<option type="<%=country%>"><%=country %></option>
<%} %>
</select><br/>
<input type="submit" value="save">

</form>
</body>
</html>