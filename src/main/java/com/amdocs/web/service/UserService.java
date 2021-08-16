package com.amdocs.web.service;

import java.sql.*;

import com.amdocs.web.model.ContactUs;
import com.amdocs.web.model.Feedback;
import com.amdocs.web.model.User;


public class UserService {
	public User getUser(String email, String password) {
		
		User newUser = null;
		String queryString = "select * from amdocs.user where email='"+ email + "' and password="+ password;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs","root","root");
			Statement st = connection.createStatement();
			
			ResultSet resultSet = st.executeQuery(queryString);
			
			if(resultSet.next()) {
				newUser = new User();
				newUser.setId(Integer.parseInt(resultSet.getString("id")));
				newUser.setEmail(resultSet.getString("email"));
				newUser.setName(resultSet.getString("name"));
				newUser.setPhone(resultSet.getString("phone"));
				
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return newUser;
	}
	public boolean uploadFeeback(Feedback currentFeedback) {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs","root","root");
			PreparedStatement ps = connection.prepareStatement("INSERT INTO feedback_form ( email , feedback, name, phone , id )  VALUES (?, ?, ?,?,?)");
	           ps.setString(1, currentFeedback.getEmail());
	           ps.setString(2, currentFeedback.getFeedback());
	           ps.setString(3, currentFeedback.getName());
	           ps.setString(4, currentFeedback.getPhone());
	           ps.setInt(5, currentFeedback.getId());
	           ps.executeUpdate();
	           return true;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
		
		
	}
	public boolean uploadContactUs(ContactUs contactUs) {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs","root","root");
			PreparedStatement ps = connection.prepareStatement("INSERT INTO contact_form ( id , name, email ,phone , message )  VALUES (?, ?, ?,?,?)");
	           ps.setInt(1, contactUs.getId());
	           ps.setString(2, contactUs.getName());
	           ps.setString(3, contactUs.getEmail());
	           ps.setString(4, contactUs.getPhone());
	           ps.setString(5, contactUs.getMessage());
	           ps.executeUpdate();
	           return true;
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		return false;	
	}
	public boolean addCourses(String[] courseIdString , int id) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs","root","root");
			for(String courseId : courseIdString) {
				PreparedStatement ps = connection.prepareStatement("INSERT INTO course_enroll (id ,course_id)  VALUES (?, ?)");
		           ps.setInt(1, id );
		           ps.setInt(2, Integer.parseInt(courseId) );
		           ps.executeUpdate();
			}
			
	           return true;
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		return false;	
		
	}
		
}
