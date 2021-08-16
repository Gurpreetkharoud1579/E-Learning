package com.amdocs.web.model;

public class Feedback {
	private int id;
	private String name;
	private String phone;
	private String email;
	private String feedback;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	@Override
	public String toString() {
		return "Feedback [id=" + id + ", name=" + name + ", phone=" + phone + ", email=" + email + ", feedback="
				+ feedback + "]";
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	

}
