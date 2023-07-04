package com.sud.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sud.bean.User;
import com.sud.service.UserService;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");

		User user = new UserService().login(email, pwd);

		if (user != null) {
			HttpSession session = request.getSession(true);
			session.setAttribute("user", user);
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}else {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.print("<center><h3><font color='red'>Login failed, check your credentials once !!</font></h3></center>");
			request.getRequestDispatcher("login.html").include(request, response);
		}
	}
}
