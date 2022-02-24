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
<form action="Dbjsp" method="post" >
<table border="1">
<tr><tb>Cname: <input type="text" name="cname"/></tb><br/>
<tb>Mob no:<input type="text" name="Mobno" /></tb><br/>
<tb>Gender:<select name="gender"><br/>
<option>male</option>
<option>Female</option>
</select></tb><br/>
<tb>country:<select name=country>
<% 
ArrayList <String>l=new ArrayList<String>() ;
l.add("india");
l.add("pakistan");
l.add("others");
for(int i=0;i<l.size();i++){
String c=l.get(i).toString();

%>
<option value="<%=c%>"><%=c %> </option>	
<%
} 
%> 
</select><br/>
<input type="submit" value="save"/><br/>






</table>
</table>
</form>
</body>
</html>