<%-- 
    Document   : index.html
    Created on : 12 8, 18, 9:16:13 PM
    Author     : ACER
--%>
<%
  @ page import="java.util.*";
%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <title>Rental Constructions</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  <body>

      <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
          <div class="collapse navbar-collapse" id="navbarResponsive">

            <ul class="navbar-nav mr-auto mt-4 mt-lg-0">
              <li class="nav-item active">
                <a class="nav-link" href="home-page.html">Home<span class="sr-only">(current)</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="packages.html">Packages</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="equipments.html">Equipments</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">About</a>
              </li>
            </ul>
          </div>

            <ul class="navbar-nav ml-2">
                <% String username = (String)
                   session.getAttribute("user");
                if (username == null){
                %>
              <li class="nav-item">
                <a data-toggle="modal" href="#myModal">Login</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="registration.jsp">Sign up</a>
              </li>
              <%
                }else{
              %>
                  <li> <%=username%> (<a href="logoutsession.jsp"> Logout </a>) </li>. 
               <% }%>
            </ul>
        </div>

    </nav>

    <!-- Page Content -->
    <div class="container col-12">

      <!-- Jumbotron Header -->
      <header class="jumbotron my-4" >
        <h1 class="display-3">Construction Rental Service</h1>
        <p class="lead">We are here to serve you.</p>
      </header>

      <div class="container-fluid">
        <h1 class="display-3">Featured Services</h1>
      <!-- Page Features -->
      <div class="row text-center">

        <div class="col-lg-3 col-md-6 mb-4">
          <div class="card">
            <img class="card-img-top" src="http://placehold.it/500x325" alt="">
            <div class="card-body">
              <h3 class="card-title">Construction Services</h3>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
            </div>
            <div class="card-footer">
              <a href="#" class="btn btn-primary">Find Out More!</a>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 mb-4">
          <div class="card">
            <img class="card-img-top" src="http://placehold.it/500x325" alt="">
            <div class="card-body">
              <h3 class="card-title">Equipments</h3>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo magni sapiente, tempore debitis beatae culpa natus architecto.</p>
            </div>
            <div class="card-footer">
              <a href="#" class="btn btn-primary">Find Out More!</a>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 mb-4">
          <div class="card">
            <img class="card-img-top" src="http://placehold.it/500x325" alt="">
            <div class="card-body">
              <h3 class="card-title">Construction Services</h3>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
            </div>
            <div class="card-footer">
              <a href="#" class="btn btn-primary">Find Out More!</a>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 mb-4">
          <div class="card">
            <img class="card-img-top" src="http://placehold.it/500x325" alt="">
            <div class="card-body">
              <h3 class="card-title">Construction Services</h3>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo magni sapiente, tempore debitis beatae culpa natus architecto.</p>
            </div>
            <div class="card-footer">
              <a href="#" class="btn btn-primary">Find Out More!</a>
            </div>
          </div>
        </div>

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Login Modal -->
    <div class="modal fade" id="myModal" role="dialog">
      <div class="modal-dialog">

        <!-- Modal content-->
      <div class="modal-content">
          <div class="modal-header">
            <h4 style="align-text: left;">Login</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
          <div class="modal-body" style="padding:40px 50px;">
              
              
            <form role="form" action="validation.jsp">
              <div class="form-group">
                <label for="username"><span class="glyphicon glyphicon-user"></span> Username</label>
             <!--   <input type="email" class="form-control" id="email" placeholder="Enter email"> -->
                <input type="text"class="form-control" name="Uname" value="" placeholder="Username" required/>
              </div>
              <div class="form-group">
                <label for="password"><span class="glyphicon glyphicon-eye-open"></span>Password</label>
                <input type="password" class="form-control" name="psw" value="" placeholder="Password" required/>
              </div>
                <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off" value="Login"></span> Login</button>
            </form>
          </div>
          <div class="modal-footer">

            <span class="d-flex p-2">Not a member? <a href="registration.jsp"> Sign Up</a> </span>
          </div>
        </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="page-footer font-small blue pt-4">
        <!-- Footer Links -->
        <div class="container-fluid ">
            <!-- Grid column -->
            <div class="col-12">
              <!-- Content -->
              <h5 class="text-uppercase">Information</h5>
              <label> Address </label>
              <p> Somewhere in Baguio City, Benguet </p>
              <label> Contact Number </label>
              <p> +00 (123) 456 7890 </p>
              <label> Email Address </label>
              <p> email@website.com </p>
            </div>
        </div>

      </footer>

    <style>
        .modal-header, h4, .close {
            background-color: #0c0c0c;
            color:white !important;
            text-align: left;
            font-size: 30px;
        }
        .modal-footer {
            background-color: #f9f9f9;
        }

    </style>


  </body>
</html>

