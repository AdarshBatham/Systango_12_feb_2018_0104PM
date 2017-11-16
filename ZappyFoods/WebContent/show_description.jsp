<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList" %>
    <%@page import="beans.Product" %>
    <%@page import="beans.Cart" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" type="image/x-icon" href="images/zappyimage.ico" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="BackFromFromProductDiscription" method="post">	
		<input type="submit" name="submit" value="back"/>
</form>
<center>
	<%
		ArrayList<Product> al=(ArrayList<Product>)request.getAttribute("show_description");
	
		if(al.isEmpty())
		{%>No Products To Show<%}
		else
		{
			for(Product l:al)
			{%>
				<form action="AddToCartController" method="post">
										
								<center><h4><%=l.getName()%></h4><br/></center>
								<center>Price  = <%=l.getPrice()%> Rs.<br/></center>
								<center>Weight =<%=l.getWeight()%> gms.<br/></center>
								<center><%=l.getDescription()%><br/></center>
								<center><image src="images/<%=l.getImage()%>" height="250" width="250"/><br/></center>
								<center><input type="hidden" value="<%=l.getId()%>" name="hidden1"/><br/></center>
								<center><input type="number" name="productquantity" value="1" min="1" required/><br/></center>
								<center><input type="submit" value="Add to cart" name="submit" onClick="return confirm('Really you want to add product cart')"/><br/></center>
							</form>
							
			<%
			}
		}
	 %>	
		</center>
</body>
</html>