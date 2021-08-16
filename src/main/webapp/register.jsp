<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
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
            <h2 class="text-primary text-center mx-auto mt-5 mb-4 text-dark"> Welcome to E-learning System</h2>
            <h3 class="text-secondary text-center mx-auto mt-2 mb-1 text-dark">Register</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 mx-auto mt-5">
            <div class="myform form ">
                <form action="register" method="post" name="registerform">
                <div class="form-group">
                        <input type="text" name="id"  class="form-control my-input" id="id" placeholder="User Id" required>
                    </div>
                    <div class="form-group">
                        <input type="text" name="name"  class="form-control my-input" id="name" placeholder="Name" required>
                    </div>
                    <div class="form-group">
                        <input type="email" name="email"  class="form-control my-input" id="email" placeholder="Email" required>
                    </div>
                    <div class="form-group">
                        <input type="number" min="0" name="phone" id="phone"  class="form-control my-input" placeholder="Phone" required>
                    </div>
                    <div class="form-group">
                        <input type="text" name="address" id="address"  class="form-control my-input" placeholder="Address" required>
                    </div>
                    <div class="form-group">
                        <input type="password" min="0" name="password" id="password"  class="form-control my-input" placeholder="Password" required>
                    </div>
                    <div class="text-center ">
                        <button type="submit" class=" btn btn-block send-button tx-tfm btn-dark">Create Your Account</button>
                    </div>

                </form>
                 <div class="text-center ">
                 		<a class="btn btn-block send-button tx-tfm btn-dark" href="login.jsp" role="button">Login</a>
                    </div>
            </div>
        </div>
    </div>
</div>
</body>

</body>
</html>

