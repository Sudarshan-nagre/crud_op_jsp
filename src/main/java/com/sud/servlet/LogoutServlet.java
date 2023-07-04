package com.sud.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
        response.getWriter().print("<h4><center>You are successfully logged out!<center></h4>"); 
		
		HttpSession session = request.getSession(false);
		session.removeAttribute("user");
		session.invalidate();
		request.getRequestDispatcher("login.html").include(request, response);
	}
}
