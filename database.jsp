<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Dbjsp" method="post">
<select name ="country"><%! int i=0; %>
<% ArrayList li= new ArrayList(); 
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
<sql:setDataSource var="snapshot" driver="oracle.jdbc.OracleDriver"
url="jdbc:oracle:thin:@localhost:1521:orcl"
user="testproject" password="testproject"/>
<sql:update dataSource="${snapshot}" var="IT">
INSERT INTO example (cname,Mobno,gender,country) VALUES (?, ?, ?, ?)
<sql:param value="${param.cname}" />
<sql:param value="${param.Mobno}" />
<sql:param value="${param.gender}" />
<sql:param value="${param.country}" />
</sql:update>


 
<table border="1">
<tr><td>Cname
</td>
<td>Mobno</td>
<td>gender
</td>
<td>country</td>
</tr>
<tr>

<sql:query dataSource="${snapshot}" var="result">
select * from example where COUNTRY=?
 <sql:param value="${param.country}" /></sql:query>
<c:forEach var="row" items="${ result.rows }">
<tr>
<td><c:out value="${row.Cname }"/></td>
<td><c:out value="${row.Mobno }"/></td>
<td><c:out value="${row.gender }"/></td>
<td><c:out value="${row.country }"/></td></tr>
</c:forEach> 
</table>

</body>
</html>
