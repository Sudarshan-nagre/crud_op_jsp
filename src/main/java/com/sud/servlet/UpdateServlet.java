package com.sud.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sud.bean.User;
import com.sud.service.UserService;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		User user = (User)session.getAttribute("user");
		
		user.setName(request.getParameter("name"));
		user.setEmail(request.getParameter("email"));
		user.setMobile(request.getParameter("mobile"));
		user.setAddress(request.getParameter("address"));
		
		String result = new UserService().update(user);
		
		if(result.equals("true")) {
			session.setAttribute("user", user);
			request.getRequestDispatcher("profile.jsp?op=edit").include(request, response);
			
			response.setContentType("text/html");
			response.getWriter().print("<center><h3> <font color='green'>Update Sccess !!!</font></h3></center>");
		}
	}
}
