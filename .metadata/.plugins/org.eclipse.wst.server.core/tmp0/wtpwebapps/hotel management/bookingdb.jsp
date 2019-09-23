<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String name=request.getParameter("username");
String address=request.getParameter("address");
String phone=request.getParameter("mobile");


//required format
SimpleDateFormat formatter = new SimpleDateFormat("MM-yyyy-dd");


//get the date in util package
Date  d=formatter.parse(request.getParameter("checkindate"));

//convert to sql package
java.sql.Date d2 = new java.sql.Date( d.getTime() );




Date  d1=formatter.parse(request.getParameter("checkoutdate"));
java.sql.Date d3 = new java.sql.Date( d1.getTime() );



Connection conn=null;


//register the driver 
Class.forName("com.mysql.oracle.Driver");
conn=DriverManager.getConnection("jdbc.mysql://localhost:3306/hotelmanagement","root","root");
String sql="insert into user(username,addess,mobile,checkindate,checkoutdate) values(?,?,?,?,?,)";
PreparedStatement ps=conn.prepareStatement(sql);

ps.setString(1, name);
ps.setString(2, address);
ps.setString(3, phone);
ps.setDate(4, d2);
ps.setDate(5, d3);


int i=ps.executeUpdate();


if(i>0)
{
	response.sendRedirect("home.jsp");
}
else
{
	
response.sendRedirect("booking form.jsp");




}






















%>>



</body>
</html>