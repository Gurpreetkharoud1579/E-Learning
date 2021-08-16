<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<title>Courses</title>
	<script src="jquery-3.5.1.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>

  <%
  		response.setHeader("Cache-Control", "no-cache , no-store, must-revalidate");
  		response.setHeader("Pragma" , "no-cache");
		response.setHeader("Expires" , "0");
  		if(session.getAttribute("id") == null){
  			response.sendRedirect("login.jsp");
  		}
  %>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Welcome ${name}</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="dashBoard.jsp">Home</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link active" href="courses.jsp">Courses</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="feedback.jsp">Feedback</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="contactUs.jsp">Contact Us</a> 
        </li>
        
      </ul>
    </div>
  </div>
  <div class="nav navbar-nav navbar-right">
               <a href="logout" class="navbar-brand">Logout</a>
            </div>
  
</nav>


<div class="container" style=" margin-top:100px;">

<form action="enrollCoursesUpdate" method='post'  >

<c:if test="${coursesList.size() == 0}">
	<h3 style="margin-bottom: 10px; text-align: center;">You have enrolled all available courses.</h3>
	<h3 style="margin-bottom: 25px; text-align: center;">Will add new Courses soon.</h3>
</c:if>
<c:if test="${coursesList.size() != 0}">
<h3 style="margin-bottom: 25px; text-align: center;">Select the courses you want to enroll</h3>
<table class="table table-striped">
  <thead class=" ">
    <tr>
      <th scope="col">Enroll </th>
      <th scope="col">Course Name</th>
      <th scope="col">Course Description</th>
      <th scope="col">Course Fee</th>
      
    </tr>
  </thead>
  <tbody>



     <c:set var = "count" value = "0" />
    <c:forEach items="${coursesList}" var="list">
       <tr>
       	   <td><input type="checkbox" id="checkbox_${count}" name="checkedCourses" value="${list.courseId}" style="width: 20px; height: 20px; border-width: 0; "></td>
         <td>${list.courseName}</td>
         <td>${list.courseDesc}</td>
         <td> ${list.courseFee}</td>
       </tr>
       <c:set var = "count" value = "${count+1}" />
     </c:forEach>
  
  </tbody>
</table>
<button type="submit" class="btn btn-primary btn-dark" id="showChecked">Enroll</button>
</c:if>
</form>

</div>

<script>
jQuery(document).ready(function() {

});
</script>


</body>
</html>