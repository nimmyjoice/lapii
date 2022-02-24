<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import=" java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="formservlet  " method="post">
First Name: <input type="text" name="fname"/><br/>
Last Name:  <input type="text" name="lname"/><br/>
Mob no:  <input type="text"" name="mobno"/><br/>
Email id: <input type="text"" name="email"/><br/>
date of birth: <input type="date" name="dob"/><br/>
 country : <select name="country">
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