<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<title>Courses</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>

  <%
  		response.setHeader("Cache-Control", "no-cache , no-store, must-revalidate");
  		if(session.getAttribute("id") == null){
  			response.sendRedirect("login.jsp");
  		}
  %>

	<nav class="navbar navbar-expand-lg  navbar-dark bg-dark">
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

<div class="container" style="margin-top:100px;">

<c:if test="${enrolledCoursesList.size() == 0}">
	<h3 style="margin-bottom: 10px; text-align: center;">You have not enrolled any course</h3>
	<h3 style="margin-bottom: 25px; text-align: center;"><a href="enrollCourse">Click to enroll new Courses.</a></h3>
</c:if>
<c:if test="${enrolledCoursesList.size() != 0}">
<h3 style="margin-bottom: 25px; text-align: center;">Your enrolled courses are listed below</h3>

<table class="table table-striped">
  <thead class=" ">
    <tr>
      <th scope="col">Course Name</th>
      <th scope="col">Course Description</th>
      <th scope="col">Course Resource</th>
    </tr>
  </thead>
  <tbody>
     
    <c:forEach items="${enrolledCoursesList}" var="list">
       <tr>
         <td>${list.courseName}</td>
         <td>${list.courseDesc}</td>
         <td><a href="${list.courseResource}"> ${list.courseResource}</a> </td>
       </tr>
     </c:forEach>
    
  </tbody>
</table>
</c:if>
</div>









<%-- <c:forEach var="lists" items="${coursesList}">
        <div class="card text-white border-secondary bg-success mb-3 mx-auto mt-5" style="max-width: 18rem;">
            <h4><div class="card-header">${lists.courseName}</div></h4>
            <div class="card-body">
                <h6 class="card-title">Course Fee-$${lists.courseFee}</h6>
                <p class="card-text">${lists.courseDesc}</p>
            </div>
            <div class="card-footer bg-transparent border-success"><a href="${lists.courseResource}" style="color:white">${lists.courseResource}</a></div>
        </div>
</c:forEach><body> --%>

</body>
</html>