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
			<!-- <li ><a href="index.jsp">Home</a></li> -->
			<li ><a href="ViewAllProductsControllerFromInside">Products</a></li>
			<li ><a href="ShowCartControllerFromInside">Show Cart</a></li>			
			</ul>
			</div>
			</nav>
			
			
			</div>
			</div>
			</div>
<div>
	<form action="CustomerLogoutController" method="post">	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="submit" name="submit" value="logout"/>
	</form>	
	
	
	<center>
	
	
		<font color="orange">
			<h1>Customer Home</h1>
		</font>	
		
		
		<h1><font color="red">${unorderedproducts}</font></h1>
		<h1><font color="blue">${customer_details_updated}</font></h1>
		<h1><font color="red">${customer_details_not_updated}</font></h1>
		<h1><font color="red">${no_data_in_your_cart}</font></h1>
		<h1><font color="red">${nodatafound}</font></h1>
		<h1><font color="red">${no_data_in_cart}</font></h1>
		
		
	</center>
	<%
		String email=(String)session.getAttribute("customeremail"); 
	String customeremail=(String)session.getAttribute("customeremailwhencheckout"); 
		if((email!=null) || (customeremail!=null))
		{
	%>
		<h3>Welcome :<font color="blue">${customername}</font></h3>
	<center>
		<table border="2">			
			<tr><td><form action="customer_change_password.jsp" method="post"><input type="submit" value="Change Password"/></form></td></tr>
			<tr><td><form action="CustomerUpdateProfileController" method="post"><input type="submit" value="Update Profile"/></form></td></tr>
			<!-- <tr><td><form action="PendingOrdersController" method="post"><input type="submit" value="View Unordered Products"/></form></td></tr> -->
			<tr><td><form action="ViewDispatchedOrdersController" method="post"><input type="submit" value="View Dispatched orders"/></form></td></tr>
			
			
			<tr><td><form action="ViewAllOrdersToCustomerController" method="post"><input type="submit" value="View All Orders"/></form></td></tr>
<!-- 		<tr><td><a href="PendingProductsController">view pending products</a></td></tr>-->
		</table>	
	</center>
	<%
		}
		else 
		{
			
			response.sendRedirect("customer_login.jsp");
		}
		%>	
	</div>
</body>
</html>