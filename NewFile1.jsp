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
<form action="Newservlet" method="post">
Customername:<input type="text" name="custname"><br/>
Emailid :<input type="text" name="email"><br/>
  <label for="issuedate">Issuedate:</label>
 <input type="date" id="issue" name="issue"><br/>
<select>
<%
ArrayList<String> list=new ArrayList<String>();
list.add("India");
list.add("pakistian");
list.add("usa");
list.add("srilanka");


for(String country:list){%>
	 <option value="<%=country%>"><%=country %> </option>	
<%
} 
%> 
</select>
<input type="submit" value="submit">
</form>
</body>
</html>