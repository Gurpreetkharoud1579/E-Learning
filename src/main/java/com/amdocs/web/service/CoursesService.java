package com.amdocs.web.service;

import java.awt.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.amdocs.web.model.Courses;
import com.amdocs.web.model.User;

public class CoursesService {

	public ArrayList<Courses> getEnrolledCourses(int id) {
		ArrayList<Courses> courseList= new ArrayList<Courses>();
		try {
			String queryString = "select * from course where course_id in ( select course_id from course_enroll where id=?); ";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs","root","root");
			PreparedStatement ps = connection.prepareStatement(queryString);
	        ps.setInt(1, id);
			ResultSet resultSet = ps.executeQuery();

			while(resultSet.next()) {
				Courses courses = new Courses();
				courses.setCourseDesc(resultSet.getString("course_desc"));
				courses.setCourseId(resultSet.getInt("course_id"));
				courses.setCourseFee(resultSet.getString("course_fee"));
				courses.setCourseName(resultSet.getString("course_name"));
				courses.setCourseResource(resultSet.getString("course_resource"));

				courseList.add(courses);
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return courseList;
	}

	public ArrayList<Courses> getCourses(int id) {
		ArrayList<Courses> courseList= new ArrayList<Courses>();
		try {
			String queryString = "Select * from course where course_id not in (Select course_id from course_enroll where id= ? );";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs","root","root");
			
			PreparedStatement ps = connection.prepareStatement(queryString);
			ps.setInt(1,id);
			ResultSet resultSet = ps.executeQuery();

			while(resultSet.next()) {
				Courses courses = new Courses();
				courses.setCourseDesc(resultSet.getString("course_desc"));
				courses.setCourseId(resultSet.getInt("course_id"));
				courses.setCourseFee(resultSet.getString("course_fee"));
				courses.setCourseName(resultSet.getString("course_name"));
				courses.setCourseResource(resultSet.getString("course_resource"));

				courseList.add(courses);
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return courseList;
	}

}
