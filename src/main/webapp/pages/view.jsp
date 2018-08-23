<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="com.abc.service.CustomerService,com.abc.pojo.*,java.util.*"%>  
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<h1 align="center">Customer Details</h1>  
  
<%  
String id=request.getParameter("id");
CustomerService cs= new CustomerService();
Customer c= cs.getCustomers(Integer.parseInt(id));
request.setAttribute("Id", c.getCust_id());
request.setAttribute("Name", c.getName());
request.setAttribute("Address", c.getAddress());
request.setAttribute("DateofBirth", c.getDob());
%>   

<p> Id: <%= request.getAttribute("Id") %></p>
<p> Name: <%= request.getAttribute("Name") %></p>
<p> Address: <%= request.getAttribute("Address") %></p>
<p> Date of Birth: <%= request.getAttribute("DateofBirth") %></p>
<br><br>
<p>Go to <a href="/MyWebApp/pages/CRUD.jsp">Main Page</a></p>

</body>
</html>