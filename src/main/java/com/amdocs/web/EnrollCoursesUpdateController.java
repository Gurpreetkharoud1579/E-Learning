package com.amdocs.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.web.service.UserService;

public class EnrollCoursesUpdateController extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] newCourses = request.getParameterValues("checkedCourses");
		PrintWriter out = response.getWriter();
		for(String courseString : newCourses)
			out.print(courseString);
		UserService userService = new UserService();
		if(userService.addCourses(newCourses , (int)request.getSession().getAttribute("id"))) {  
			response.setContentType("text/html");  
			out.println("<script type=\"text/javascript\">");  
			out.println("alert('Course enrolled Succesfully');"); 
			out.println("location='enrollCourse';");
			out.println("</script>");
		}
		
	}

}
