<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="students" class="servlet.Studentbean">
<jsp:setProperty property="firstname" name="students" value="nimmy"/>
<jsp:setProperty property="age" name="students" value ="10"/>
</jsp:useBean>
<p>student name:
<jsp:getProperty property="firstname" name="students"/></p>
<p> student age:
<jsp:getProperty property="age" name="students"/></p>
</body>
</html> 