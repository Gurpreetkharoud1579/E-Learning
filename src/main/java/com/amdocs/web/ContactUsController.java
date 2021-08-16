package com.amdocs.web;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amdocs.web.model.ContactUs;
import com.amdocs.web.service.UserService;


public class ContactUsController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int id  = (int) session.getAttribute("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String message = request.getParameter("message");
		
		ContactUs  contactUs = new ContactUs();
		contactUs.setId(id);
		contactUs.setName(name);
		contactUs.setEmail(email);
		contactUs.setPhone(phone);
		contactUs.setMessage(message);
		
		UserService service = new UserService();
		if(service.uploadContactUs(contactUs)) {
			PrintWriter out = response.getWriter();  
			response.setContentType("text/html");  
			out.println("<script type=\"text/javascript\">");  
			out.println("alert('Message Sent Succesfully');"); 
			out.println("location='contactUs.jsp';");
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
