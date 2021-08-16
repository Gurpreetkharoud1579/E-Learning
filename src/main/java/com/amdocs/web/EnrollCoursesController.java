package com.amdocs.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amdocs.web.model.Courses;
import com.amdocs.web.service.CoursesService;


public class EnrollCoursesController extends HttpServlet {
	
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session =  request.getSession();
		CoursesService  coursesService = new CoursesService();
		ArrayList<Courses> courseList = coursesService.getCourses((int)session.getAttribute("id") );
		session.setAttribute("coursesList", courseList);
		response.sendRedirect("enrollCourse.jsp");

	}
}
	
