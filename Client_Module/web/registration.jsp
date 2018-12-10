<%-- 
    Document   : registration
    Created on : 12 3, 18, 10:42:55 PM
    Author     : Michael Jericho Dariano
User Interface for registration.

**Note this page will be updated for css and other functionalities**
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            <title>Registration</title>
    </head>
    <body>
        <div class="container">
            <h3 class="display-4">Register an Account</h3>
        
            <form action="action.jsp" method="POST">
                <div class="form-row">
                  <div class="form-group col-md-6">
                    <label for="fname">First Name</label>
                    <input type="text" class="form-control" id="fname" name ="fname" placeholder="Enter first name" required/>
                  </div>

                  <div class="form-group col-md-6">
                    <label for="inputPassword4">Last Name</label>
                    <input type="text" class="form-control" id="Lname"  name = "Lname"placeholder="Enter last name" required/>
                  </div>
                </div>
                  <div class="form-row">
                    <div class="form-group col-md-4">
                      <label for="inputEmail4">Username</label>
                      <input type="text" class="form-control" name ="Uname" placeholder="Username" required/>
                    </div>
                    <div class="form-group col-md-4">
                      <label for="inputPassword4"> Password</label>
                      <input type="password" class="form-control" name = "psw" id="inputPassword4" placeholder="Password" required/>
                    </div>
                  </div>
                <br>
                <label for ="identity"> Are you A? </label>
                <br>
                <input type="radio" name="role" value="client" > Client <br>
                <input type="radio" name="role" value="admin"> Admin <br>
                  <button type="submit" class="btn btn-primary" value="clientAccount">Create an Account</button>
            </form>
        </div>    
    </body>
</html>
