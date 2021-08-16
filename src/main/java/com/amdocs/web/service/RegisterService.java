package com.amdocs.web.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.amdocs.web.model.User;

public class RegisterService {
	public boolean addUser(User user) throws ClassNotFoundException {

	       try {
	           String host = "jdbc:mysql://localhost:3306/amdocs";
	           String username = "root";
	           String psw = "root";
	           Class.forName("com.mysql.jdbc.Driver");
	           Connection con = DriverManager.getConnection(host, username, psw);

	           PreparedStatement ps = con.prepareStatement("INSERT INTO user  VALUES (?, ?, ?,?,?,?)");
	           ps.setInt(1, user.getId());
	           ps.setString(2, user.getAddress());
	           ps.setString(3, user.getEmail());
	           ps.setString(4, user.getName());
	           ps.setString(5, user.getPassword());
	           ps.setString(6, user.getPhone());
	           ps.executeUpdate();
	           return true;

	       }
	       catch(SQLException err)
	        {
	            System.out.println(err.getMessage()); 
	            return false;
	        }
	    }

}
