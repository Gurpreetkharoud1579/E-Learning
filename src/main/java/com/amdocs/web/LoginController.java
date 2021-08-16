package com.amdocs.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amdocs.web.model.User;
import com.amdocs.web.service.UserService;

public class LoginController extends HttpServlet {
	protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = (request.getParameter("email"));
		String pass =  request.getParameter("password");
		
		UserService controller = new UserService();
		User currentUser = controller.getUser(email, pass);
		if(currentUser!=null) {	
			createSession(request , currentUser);
			response.sendRedirect("dashBoard.jsp");
		}else {
			response.sendRedirect("login.jsp");
		}
	}

	private void createSession(HttpServletRequest request, User currentUser) {
		HttpSession session = request.getSession();
		session.setAttribute("id", currentUser.getId());
		session.setAttribute("email", currentUser.getEmail());
		session.setAttribute("name" , currentUser.getName());
	}

}
