<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
  background:gray;
  font-family:monospace;
  font-size: 15px
}
form {
  background: activeborder;
  padding: 4em 4em 2em;
  max-width: 400px;
  margin: 50px auto 0;
  box-shadow: 0 0 1em #222;
  border-radius: 2px;
  h2 {
    margin:0 0 50px 0;
    padding:10px;
    text-align:center;
    font-size:30px;
    color:aqua;
    border-bottom:solid 1px #e5e5e5;
  }
  p {
    margin: 0 0 3em 0;
    position: relative;
    
  }
  
  </style>
<body>
<sql:setDataSource var="snapshot" driver="oracle.jdbc.OracleDriver"
url="jdbc:oracle:thin:@localhost:1521:orcl"
user="testproject" password="testproject"/>
<form action="" method="post">
 <h2>Booking</h2>
		<p>
			<label for="Customer_name" class="floatLabel">Customer Name</label>
			<input id="Customer_name" name="Customer_name" type="text">
			
		</p>
		<p> <label for=" custemailid" class="floatLabel">Customer Emailid</label>
		<input id="custemailid" name="custemailid" type="text"></p>
		
		<p> <label for=" bookdate" class="floatLabel">Booking Date</label>
		<input id="bookdate" name="bookrate" type="date"></p>
			<p> 
			<label for=" lapname" class="floatLabel">Laptop name</label>
		<select id="custemailid" name="lapname" type="text">
		
			<%
ArrayList<String> list=new ArrayList<String>();
list.add("asus");
list.add("thohiba");
list.add("samsung");
list.add("lenova");


for(String c:list){%>
	 <option value="<%=c%>"><%=c %> </option>	
<%
} 
%> 
	</select>
	</p>

			<p>
			
 

  <label for=" bookdate" class="floatLabel">price</label>
		<input id="bookdate" name="bookrate" type="text" value ="result"></p>
		 
		<p> <label for=" Crate" class="floatLabel">Customer Rate</label>
		<input id="Crate" name="Crate" type="text"></p>
		<p> <label for=" Brate" class="floatLabel">Balance Rate</label>
		<input id="Brate" name="Brate" type="text"></p>
		<p>
			<input type="submit" value="Book Now" id="submit">
		</p>
	</form>
</body>
</html>