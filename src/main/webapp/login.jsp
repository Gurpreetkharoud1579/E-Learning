<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-learning</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>

	<div class="container">
    <div class="col-md-6 mx-auto text-center">
        <div class="header-title">
            <h2 class="text-primary text-center mx-auto mt-5 mb-4 text-dark">Sign In</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 mx-auto mt-5">
            <div class="myform form ">
                <form action="login" method="post" name="login">
                   
                    <div class="form-group">
                        <input type="text" name="email"  class="form-control my-input" id="email" placeholder="Email" required>
                    </div>
                    
                    <div class="form-group">
                        <input type="password" min="0" name="password" id="password"  class="form-control my-input" placeholder="Password" required>
                    </div>

                    <div class="text-center ">
                        <button type="submit" class=" btn btn-block send-button tx-tfm btn-dark" style="margin-bottom:10px;">Login</button>
                    </div> </form>
                    
                    <form action="register.jsp" name="register">
                    <div class="text-center ">
                        <button type="submit" class=" btn btn-block send-button tx-tfm btn-dark" style="margin-top:10px;">Create New Account</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>