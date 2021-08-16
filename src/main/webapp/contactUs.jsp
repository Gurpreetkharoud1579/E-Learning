
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>ContactForm</title>
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
<div class="container mx-auto">
    <div class="col-md-5">
        <div class="form-area">
            <form role="form" action="contactUs" method="post" name="contactform">
                <br style="clear:both">
                <h3 style="margin-bottom: 25px; text-align: center;">Contact Form</h3>
                <div class="form-group">
                    <input type="text" class="form-control" id="name" name="name" placeholder="Name" required>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="email" name="email" placeholder="Email" required>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="phone" name="phone" placeholder="Mobile Number" required>
                </div>
                <div class="form-group">
                    <textarea class="form-control" name="message" type="textarea" id="message" placeholder="Message" maxlength="140" rows="7"></textarea>
                </div>

                <button type="submit" id="submit" name="submit" class="btn btn-primary pull-right btn-dark">Submit Form</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>

