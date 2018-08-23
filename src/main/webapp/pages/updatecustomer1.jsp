<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.abc.pojo.Address"%>
<%@page import="com.abc.pojo.Customer"%>
<%@page import="com.abc.service.CustomerService"%>
<%@page import="java.sql.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id=request.getParameter("id");
	 	String name=request.getParameter("name");
	 	String date= request.getParameter("dob");
	 	Date sqlDate= Date.valueOf(date);
	 	String streetName=request.getParameter("street");
	 	String city=request.getParameter("city");
	 	String state=request.getParameter("state");
	 	String zip= request.getParameter("zip");
	 	
	 	Address add= new Address(streetName, city, state, zip);
	 	Customer c= new Customer(Integer.parseInt(id), name, sqlDate, add);
	 	
	 	CustomerService cs= new CustomerService();
	 	cs.updateCustomer(c);
	%>
	
	<p>Go to main <a href="/MyWebApp/pages/CRUD.jsp">Main</a></p>
</body>
</html>