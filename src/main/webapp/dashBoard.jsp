<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<title>Dashboard</title>
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

 <h1 style=" margin-top:100px; text-align: center;">Welcome to E-Learning</h1>
<div class="container" style=" margin-top:150px;" >


  <div class="row row-cols-1 row-cols-md-3 g-4">
    <div class="col">
      <div class="card shadow-sm bg-dark">
               <div class="card-body">
          
          <h5 class="card-title text-light">Courses</h5>
          <p class="card-text text-light">Checkout the course section</p>
          <a href="<c:url value="courses.jsp"/>" class="btn btn-primary btn-light">Click</a>
          
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card shadow-sm bg-dark ">
       
        <div class="card-body">
          <h5 class="card-title text-light">Feedback</h5>
          <p class="card-text text-light">Give Us your valuable feedback!</p>
          <a href="<c:url value="feedback.jsp"/>" class="btn btn-primary btn-light">Click</a>
          
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card shadow-sm bg-dark">
               <div class="card-body">
          <h5 class="card-title text-light">Contact Us</h5>
          <p class="card-text text-light">Found a issue? Fill this contact form!</p>
          <a href="<c:url value="contactUs.jsp"/>" class="btn btn-primary btn-light">Click</a>
        </div>
      </div>
    </div>

  </div>
</div>
</div>
 <%--  <div class="card mt-5 ml-5 mx-auto" style="width: 18rem; margin-left: 150px; margin-top:60px;">
      <div class="card-body">
          <h5><p class="card-text mt-2">Courses</p></h5>
          <a href="<c:url value="courses.jsp"/>" class="card-link text-right">Click to checkout the course section</a>
      </div>
  </div>

  <div class="card mt-5 ml-5 mx-auto" style="width: 18rem; margin-left: 150px; margin-top:60px;">
      <div class="card-body">

          <h5><p class="card-text mt-2">Feedback form</p></h5>
          <a href="<c:url value="feedback.jsp"/>" class="card-link text-right">Give Us your valuable feedback! We wanna improve!</a>
                   <a href="#" class="card-link">Another link</a>
      </div>
  </div>

  <div class="card mt-5 ml-5 mx-auto" style="width: 18rem; margin-left: 150px; margin-top:60px;">
      <div class="card-body">

          <h5><p class="card-text mt-2"></p>Contact Form</h5>
          <a href="<c:url value="contactUs.jsp"/>" class="card-link text-right">Found a issue? Fill this contact form!</a>
                   <a href="#" class="card-link">Another link</a>
      </div>
  </div> --%>
<body>

</body>
</html>