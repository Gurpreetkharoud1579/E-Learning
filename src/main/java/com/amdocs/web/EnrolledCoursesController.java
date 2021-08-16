package com.amdocs.web;

import java.awt.List;
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

public class EnrolledCoursesController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int id = (int) session.getAttribute("id");
		CoursesService  coursesService = new CoursesService();
		ArrayList<Courses> courseList = coursesService.getEnrolledCourses(id);
		PrintWriter out = response.getWriter();
		for(Courses course : courseList) {
			out.println(course.toString());
		}
		session.setAttribute("enrolledCoursesList", courseList);
		response.sendRedirect("enrolledCourses.jsp");
	}

	

}
