<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" type="image/x-icon" href="images/zappyimage.ico" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css" />
	<link rel="stylesheet" href="mystyle.css" />
	<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

</head>
<body>
<div class="container">
			<div class="row">
			<div class="col-sm-5">
			<img src="images/zappyimage.png" alt=""></img>
			</div>
			
			
			<div class="col-sm-7 my_menu">
			<nav class="navbar navbar-default">
			<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mynavbar">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</button>
			</div>
			
			
			<div class="collapse navbar-collapse" id="mynavbar">
			<ul class="nav navbar-nav pull-right">
			<li ><a href="index.jsp">Home</a></li>
			
			
			
			
			</ul>
			</div>
			</nav>
			
			
			</div>
			</div>
			</div>
<!-- <form action="AdminLogout" method="post">
	
	<tr><td><a href="index.jsp">back</a></td></tr>
</form>
 -->



	<center>
<h1>Admin Login</h1>


<%
String m=(String)request.getAttribute("message");
if(m!=null)
	out.println(m);

String adminid=(String)session.getAttribute("adminid");
if(adminid!=null)
	response.sendRedirect("adminhome.jsp");
else
{

%>
		<form action="AdminLogin" method="post">
			<table >
			<tr>
				<td>Enter Id :</td>
				<td><input type="text" name="id" placeholder="Use Integer" pattern="^[0-9]*$" title="Please only use numeric" required/></td>
			</tr>
				<tr>
				<td>Enter Password :</td>
				<td><input type="password" name="password" required/></td>
			</tr>
				<tr>
				
				<td><input type="submit" name="submit" value="submit"/></td>
			</tr>
			</table>
		</form>
<%
}

%>
<center>	
</body>
</html>