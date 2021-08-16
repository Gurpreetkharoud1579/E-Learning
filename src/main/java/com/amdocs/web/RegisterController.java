package com.amdocs.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amdocs.web.model.User;
import com.amdocs.web.service.RegisterService;
import com.mysql.cj.xdevapi.Schema.CreateCollectionOptions;

public class RegisterController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name  = (String) request.getParameter("name");
		int userId =   Integer.parseInt(request.getParameter("id"));
		String email  = (String) request.getParameter("email");
		String phone  = (String) request.getParameter("phone");
		String address  = (String) request.getParameter("address");
		String password  = (String) request.getParameter("password");
		
		User  user = new User();
		user.setEmail(email);
		user.setPhone(phone);
		user.setId(userId);
		user.setName(name);
		user.setPassword(password);
		user.setAddress(address);
		
		RegisterService registerService = new RegisterService();
		PrintWriter out = response.getWriter();
		try {
			if(registerService.addUser(user)) {
				createSession(request,user);
				response.sendRedirect("dashBoard.jsp");
			}else {
				response.setContentType("text/html");  
				out.println("<script type=\"text/javascript\">");  
				out.println("alert('User Id or Email already registered. Try another one or login using existing mail');"); 
				out.println("location='register.jsp';");
				out.println("</script>");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}

	private void createSession(HttpServletRequest request ,User currentUser) {
		HttpSession session = request.getSession();
		session.setAttribute("id", currentUser.getId());
		session.setAttribute("email", currentUser.getEmail());
		session.setAttribute("name" , currentUser.getName());
		
	}



}
