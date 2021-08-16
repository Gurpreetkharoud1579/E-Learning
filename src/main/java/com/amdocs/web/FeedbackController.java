package com.amdocs.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amdocs.web.model.Feedback;
import com.amdocs.web.model.User;
import com.amdocs.web.service.UserService;


public class FeedbackController extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int id  = (int) session.getAttribute("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String feedback = request.getParameter("feedback");
		
		Feedback currentFeedback = new Feedback();
		currentFeedback.setEmail(email);
		currentFeedback.setFeedback(feedback);
		currentFeedback.setId(id);
		currentFeedback.setName(name);
		currentFeedback.setPhone(phone);

		UserService service = new UserService();
		if( service.uploadFeeback(currentFeedback) ) {
			PrintWriter out = response.getWriter();  
			response.setContentType("text/html");  
			out.println("<script type=\"text/javascript\">");  
			out.println("alert('Thank you for the feedback');"); 
			out.println("location='feedback.jsp';");
			out.println("</script>");
			
			
		}else {
			PrintWriter out = response.getWriter();  
			response.setContentType("text/html");  
			out.println("<script type=\"text/javascript\">");  
			out.println("alert('There was some problem ');");  
			out.println("</script>");
			
		}
		
	}


}
