package com.amdocs.web.model;

public class Courses {
	private int courseId;
	private String courseDesc;
	private String courseName;
	private String courseFee;
	private String courseResource;
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public String getCourseDesc() {
		return courseDesc;
	}
	public void setCourseDesc(String courseDesc) {
		this.courseDesc = courseDesc;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getCourseFee() {
		return courseFee;
	}
	public void setCourseFee(String courseFee) {
		this.courseFee = courseFee;
	}
	public String getCourseResource() {
		return courseResource;
	}
	public void setCourseResource(String courseResource) {
		this.courseResource = courseResource;
	}
	@Override
	public String toString() {
		return "Courses [courseId=" + courseId + ", courseDesc=" + courseDesc + ", courseName=" + courseName
				+ ", courseFee=" + courseFee + ", courseResource=" + courseResource + "]";
	}
	

}
