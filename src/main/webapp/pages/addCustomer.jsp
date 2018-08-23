<%@page import="com.abc.pojo.Address"%>
<%@page import="com.abc.pojo.Customer"%>
<%@page import="java.sql.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.abc.service.CustomerService"%>


<%  
 String name=request.getParameter("name");
 String date= request.getParameter("dob");
 Date sqlDate= Date.valueOf(date);
 String streetName=request.getParameter("street");
 String city=request.getParameter("city");
 String state=request.getParameter("state");
 String zip= request.getParameter("zip");
 
 Address add= new Address(streetName, city, state, zip);
 Customer c= new Customer(null, name, sqlDate, add);
 CustomerService cs= new CustomerService();
 boolean flag=cs.addCustomer(c);
 if(flag == true) {
	 RequestDispatcher rd= request.getRequestDispatcher("/pages/success.jsp");
	 rd.forward(request, response);	 
 }
 else {
	 RequestDispatcher rd= request.getRequestDispatcher("pages/error.jsp");
	 rd.forward(request, response);	
 }
 
%>