<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Register</title>
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div class="container">
		<h1 align="center">Welcome to Register Page</h1>
	</div>

<form action="akhil" method="post">
		
		<table>
		<tr>
			<td>UserName:</td>
			<td><input type=text name=name></td>
		</tr>
		
		<tr>
			<td>Password:</td>
			<td>  <input type=password name=password></td>
		</tr>
		
		<tr>
			<td>Re-Enter Password: </td>
			<td><input type="password" name="cpass"> </td>
		</tr>
		</table>
		
		<input type="submit">
</form>
<p>If user, <a href="pages/index.jsp">Login</a> </p> 
</body> 
</html>