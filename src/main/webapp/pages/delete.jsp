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
	<%
	
		String id=request.getParameter("id");
		
		CustomerService cs= new CustomerService();
		boolean flag=cs.deleteCustomer(Integer.parseInt(id));
		if(flag==true) {
			RequestDispatcher rd= request.getRequestDispatcher("CRUD.jsp");
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd= request.getRequestDispatcher("error.jsp");
					rd.forward(request, response);
		}
	%>

</body>
</html>