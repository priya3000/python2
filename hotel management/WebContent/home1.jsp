<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">



<title>HomePage</title>
</head>
<body>
<style type="text/css">
* {
    box-sizing: border-box;
}

body {
    font-family: Arial, Helvetica, sans-serif;
}


header {
    background-color: #993333;
    padding: 30px;
    text-align: center;
    font-size: 20px;
    color: white;
}
article {
    float: left;
    padding: 20px;
    width: 80%;
    background-color: #8080ff;
    height: 500px; 
}


section:after {
    
    display: table;
    clear: both;
}


footer {
    background-color: #777;
    padding: 10px;
    text-align: center;
    color: white;
}


@media (max-width: 600px) {
    nav, article {
        width: 100%;
        height: auto;
    }
}


.navbar {
  overflow: hidden;
  background-color: #ffcc99;
  font-family: Arial;
}


.navbar a {
  float: left;
  font-size: 16px;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
.dropdown {
  float: left;
  overflow: hidden;
}


.dropdown .dropbtn {
  font-size: 16px; 
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: #ffcc99;
  font-family: inherit; 
  margin: 0; 
}
.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: Dodgerblue;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}
.dropdown-content a {
  float: none;
  color: white;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}


.dropdown-content a:hover {
  background-color: red;
}


.dropdown:hover .dropdown-content {
  display: block;
}
.dropdown1 {
  float: left;
  overflow: hidden;
}


.dropdown1 .dropbtn {
  font-size: 16px; 
  border: none;
  outline: none;
  color:white ;
  padding: 14px 16px;
  background-color: black;
  font-family: inherit; 
  margin: 0; 
}

.navbar a:hover, .dropdown1:hover .dropbtn {
  background-color: red;
}

.dropdown1-content {
  display: none;
  position: absolute;
  background-color: Dodgerblue;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown1-content a {
  float: none;
  color: white;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown1-content a:hover {
  background-color: red;
}

.dropdown1:hover .dropdown1-content {
  display: block;
}
.dropdown2{
  float: left;
  overflow: hidden;
}

.dropdown2 .dropbtn {
  font-size: 16px; 
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: black;
  font-family: inherit; 
  margin: 0; 
}

.navbar a:hover, .dropdown2:hover .dropbtn {
  background-color: red;
}


.dropdown2-content {
  display: none;
  position: absolute;
  background-color: Dodgerblue;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown2-content a {
  float: none;
  color: white;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}


.dropdown2-content a:hover {
  background-color: red;
}

.dropdown2:hover .dropdown2-content {
  display: block;
}

.mySlides {display:none;}



</style>



</head>
<body bgcolor="#1aa3ff">
<form action="">
<header>
<div align="right">
<%=new Date() %>
</div>

<div align="center">
<h1><bgimg="C:\Users\pavankoushik1000\Desktop\mini-project\hotel management\WebContent\IMAGES\Tara-Angkor-Hotel-Gallery.jpg"><b><font size="50"><font color="blue"><i>Hotel Management</i>
</font></font></b></h1>
</div>
<br>
</header>
<hr>



<div class="navbar">

<div class="dropdown">
    <button class="dropbtn">Admin
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="Admin_Login.jsp"target="_parent">Admin Login</a>
    </div>
  </div> 
  
 
  <div class="dropdown2">
    <button class="dropbtn">User
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown2-content">
      <a href="home.jsp"target="_parent">user Registration</a>
      <a href="user.jsp"target="_parent">user Login</a>
    </div>
  </div> 
  </div>
  </div>
<hr>
<div ><b><marquee direction="left"><font color="red"><font size="6">
<span>HOTEL TARA INTERNATIONAL......</span>

</font></font></marquee></B></div>
<hr>

<section>

<img src="C:\Users\pavankoushik1000\Desktop\mini-project\hotel management\WebContent\IMAGES\tara.jpg" height="500"width="260">


<article>

<font color="black"><b>
->we provide specious rooms. <br><br><br>
->easy to register. <br><br><br>
->exellent housing facility. <br><br><br>



</b>
</font>
</article>
</section>

<footer>



<div>
<marquee direction="right">
<img alt="hotel management" src="C:\Users\pavankoushik1000\Desktop\mini-project\hotel management\WebContent\IMAGES\hall34.jpg"height="300"width="1500">
<img alt="hotel management" src="C:\Users\pavankoushik1000\Desktop\mini-project\hotel management\WebContent\IMAGES\images.jpg"height="300"width="1500">
<img alt="hotel management" src="C:\Users\pavankoushik1000\Desktop\mini-project\hotel management\WebContent\IMAGES\hotel-tara.jpg"height="300"width="1500">

</marquee>
</div>
</footer>



</body>
</html>