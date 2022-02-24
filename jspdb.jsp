<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="snapshot" driver="oracle.jdbc.OracleDriver"
url="jdbc:oracle:thin:@localhost:1521:orcl"
user="testproject" password="testproject"/>
<sql:query dataSource="${snapshot}" var="result">
select * from example</sql:query>
<sql:update dataSource="${snapshot}" var="rs">
insert into example values('johan','821546281','female','india')
</sql:update>
<c:set var="Cname" value ="nimmy"/>
<sql:update dataSource="${snapshot}" var="rd">
delete from example where Cname=?
<sql:param value="${Cname }"/>
</sql:update>
<table border="1">
<tr><td>Cname
</td>
<td>Mobno</td>
<td>gender
</td>
<td>country</td>
</tr>

<c:forEach var="row" items="${result.rows }">
<tr>
<td><c:out value="${row.Cname }"/></td>
<td><c:out value="${row.Mobno }"/></td>
<td><c:out value="${row.gender }"/></td>
<td><c:out value="${row.country }"/></td></tr>
</c:forEach>
</table>
</body>
</html>