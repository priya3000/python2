<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.io.*" %>
    <%@ page import="java.lang.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOTEL_MANAGEMENT</title>
<style>



</style>
<script type="text/javascript">
function register() {
	
	var id=document.registrationform.id.value;
	var name=document.registrationform.name.value;
	var email=document.registrationform.email.value;
	var p=document.registrationform.pass1.value;
	var c=document.registrationform.pass2.value;
	var state=document.registrationform.state.value;
	var dist=document.registrationform.dist.value;
	var cons=document.registrationform.cons.value;
	var attherateposition=email.indexOf("@");  
	var dotposition=email.lastIndexOf(".");
	
	
	
	
	   if(id==null ||id==""){  
		  alert("id can't be empty");  
		  return false;  
		} 
	   else if(c==null||c==""){
		   alert("password can't be empty");
		   return false;
	   }
	   else if(p.length<6){
		   alert("password length should be atleast 6");
		   return false;
	   }
	    
	    else if(p!=c){
	    	alert("password must be same");
	    	return false;
	    }
	    else if(name==null ||name==""){  
			  alert("ename can't be empty");  
			  return false; 
	    }
	    else if(state==null||state==""){
	    	alert("State field can't be empty");
	    	return false;
	    }
	   else if(dist==null||dist==""){
	    	alert("District field can't be empty");
	    	return false;
	    }
	     else  if(cons==null||cons==""){
	    	alert("Constituency field can't be empty");
	    	return false;
	    }
	     else if (attherateposition<1 || dotposition<attherateposition+2 || dotposition+2>=email.length){  
		     alert("Please enter a valid e-mail address \n @:"+attherateposition+"\n .:"+dotposition);  
		     return false;  
		     }   
}


</script>


</head>

<%

String id=request.getParameter("id");
String name=request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("pass1");
String state=request.getParameter("state");
String dist=request.getParameter("dist");
String cons=request.getParameter("cons");


try
{
	
	
	//register the driver
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","mubeen","chikara");
	
	
	
	PreparedStatement ps=con.prepareStatement("insert into voting values(?,?,?,?,?,?,?)");
	
	
	ps.setString(1, id);
	
	ps.setString(2, name);

	ps.setString(3, email);
	ps.setString(4, password);
	ps.setString(5, state);
	ps.setString(6, dist);
	ps.setString(7,cons);
	
	
int res=	ps.executeUpdate();



	if(res>0)
	{
		System.out.println("Congrates Your Details Are Registered");
		
	}
	else
	{
		System.out.println("Sorry Your Details Are  Not Registered");
	}
}
catch(Exception e)
{
	
	e.printStackTrace();
}

%>

<body background="D:\mini_project_practice\Ems\WebContent\images\vote220.jpg"width="1300">
<form name="registrationform"action="Voter_reg.jsp" method="post"  onsubmit="return register()">



<div align="center">
<img alt="vote" src="D:\mini_project_practice\Ems\WebContent\images\vote11.png"height="100"width="720">
</div>
<b><hr></b>
<div>
<marquee direction="left"><font size="4"><font color="Ivory">
<span><B>BE SMART TO DO YOUR PART,VOTE.............</B></span>
</font></font></marquee>
</div>
<div class="v"align="center">

<legend><b><font size="8">HOTEL MANAGEMENT</font></b></legend>
<table border="4"><font color="blue">
<tr>

<td><font color="red">ID</font></td>
<td><input type="text"name="id"placeholder="Enter ID">
</td></tr>
<tr>
<td><font color="yellow">Name</font></td>
<td><input type="text" name="name"placeholder="Enter Name">
</td>
</tr>
<tr>
<td><font color="yellow">
Email</font>
</td>
<td>
<input type="email" name="email"placeholder="Enter Email">
</td>
</tr>
<tr>
<td><font color="yellow">
Password</font>
</td>
<td>
<input type="password"name="pass1"placeholder="Enter password">
</td>
</tr>
<tr>
<td><font color="yellow">
Confirm Password</font>
</td>
<td>
<input type="password"name="pass2"placeholder="Confirm password">
</td>
</tr>
<tr>
<td><font color="yellow">
State</font>
</td>
<td>
<input text="text"name="state"placeholder="Telangana">
</td>
</tr>
<tr>
<td><font color="yellow">
District</font>
</td>
<td>
<input type="text"name="dist"placeholder="Hyderabad">
</td>
</tr>
<tr>
<td ><font color="yellow">
Assembly/Parliamentary/Constituency</font>
</td>
<td>
<input type="text"name="cons"placeholder="Enter Constituency">
</td>
</tr>
<tr>
<td><font color="yellow">File:</font></td>
 <td> <input type="file" name="pic" accept="image/*">
  
</td>
</tr>

<tr>
<td colspan="2"align="center">
<input type="submit"name="submit"value="Register"></span>
<input type="reset"name="reset"value="Cancel"></span>
</td>
</tr></font></table>
</div>

</div>
<div>
<video width="1350"height="350"  autoplay>
<source src="D:\mini_project_practice\Ems\WebContent\video\movie.mp4" type="video/mp4"></source>
</video>
</div>




</form>
</body>
</html>