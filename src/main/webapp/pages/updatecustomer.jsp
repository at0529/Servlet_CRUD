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
<title>Update page</title>
</head>
<body>
	<%
	
		String id= request.getParameter("id");
		CustomerService cs= new CustomerService();
		Customer c= cs.getCustomers(Integer.parseInt(id));
		if(c!=null) {
	%>
	<h1 align="center">Update Page</h1>
	<p>Record found </p><br>
	<p>Enter the same record number to update that record</p>
	
	<form action=updatecustomer1.jsp method="post">
		<table>
			<tr>
				<td>Id:</td>
				<td><input type="number" name="id"></td>
			</tr>
			
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Date of Birth:</td>
				<td><input type="date" name="dob"></td>
			</tr>
			<tr>
				<td>Street Name:</td>
				<td><input type="text" name="street"></td>
			</tr>
			<tr>
				<td>City:</td>
				<td><input type="text" name="city"></td>
			</tr>
			<tr>
				<td>State:</td>
				<td><input type="text" name="state"></td>
			</tr>
			<tr>
				<td>ZipCode:</td>
				<td><input type="number" name="zip"></td>
			</tr>
		</table>
		<input type="submit">
	</form>

	<%
		}
		
		else {
			%>
			<p>Record not found. Go to <a href= "/MyWebApp/pages/CRUD.jsp">Main</a></p>
	<% 
		}
	%>


</body>
</html>