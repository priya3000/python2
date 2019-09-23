<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 text align="center" style="background-color: blue;color: red;"> hotel management
	</h1>
	<div align="center"></div>
	<form action="bookingdb.jsp" method="post">
		<table><h2 text align="centre">
			<tr>
			
			<td >Username:</td>
			<td><input type="text" name="username"></td>
			</tr><br>
			
			<tr>
		<td>address:</td>
			<td><input type="text" name="address"></td>
		</tr><br>
		
		<tr>
			<td>MOBILE:</td>
			<td><input type="text" name="mobile"></td>
			</tr><br>
			
			<tr>
			<td>check in date:</td>
			<td><input type="date" name="checkindate"></td>
			</tr><br>
			
		
<tr>
<td> check out date:</td>
<td><input type="date" name="checkoutdate"></td>
</td><br>

 <tr>
		    <td><input type="submit" name="submit" value="book the room"></td>
         

			

</body>
</html>