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
 * Servlet implementation class Servlet1
 */
@WebServlet("/akhil")
public class Servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw= response.getWriter();
		
		String name= request.getParameter("name");
		String password= request.getParameter("password");
		String cPass= request.getParameter("cpass");
		
		if(password.equals(cPass)) {
			AdminService as= new AdminService();
			as.createAdmin(new Admin(name, password));
			RequestDispatcher rd= request.getRequestDispatcher("pages/index.jsp");
			rd.forward(request, response);
		}

		else {
			response.setContentType("text/html");  
			pw.println("Password didn't match");
			pw.println("<a href='/MyWebApp/'>Home</a>");
		}
		
		pw.close();
		
		
	}

}
