<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create Customer</title>
</head>
<body>
	<div class="container">
		<h1 align="center">Enter Customer Details</h1>
	</div>
	
	<form action="addCustomer.jsp" method="post">
				
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Date of Birth:</td>
				<td><input type="date" name="dob"></td>
			</tr>
			<tr>
				<td>Street Name: </td>
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
</body>
</html>