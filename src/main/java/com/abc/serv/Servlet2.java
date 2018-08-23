package com.abc.serv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.abc.pojo.Admin;
import com.abc.service.AdminService;

/**
 * Servlet implementation class Servlet2
 */
@WebServlet("/retrieve")
public class Servlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userName= request.getParameter("name");
		String password= request.getParameter("password");
		
		Admin a= new AdminService().getAdmin(userName, password);
		if((a.getPassword().equals(password)) && (a.getUserName().equals(userName))) {
			RequestDispatcher rd= request.getRequestDispatcher("pages/CRUD.jsp");
			rd.forward(request, response);
		}
		
	}

}
