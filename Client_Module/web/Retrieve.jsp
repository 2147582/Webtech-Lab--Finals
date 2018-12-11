<%-- 
    Document   : Retrieve
    Created on : 09-Dec-2018, 13:26:20
    Author     : ROG
--%>

<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<!DOCTYPE html>
<html>
    <head>
        <title>Home page</title>
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
        <% if(session.getAttribute("uname")==null) {
			%>
            <%=session.getAttribute("uname")%>   
              <li class="nav-item">
                <a data-toggle="modal" href="#myModal">Login</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="registration.jsp">Sign up</a>
              </li>
              <%} else {
               		%>
                <li class="nav-link" href="logoutsession.jsp">
                    <a href="logout.jsp">Logout</a>
                </li>
                <%}%>
              
              
                  <li>  </li>.
          
            </ul>
        </div>

    </nav>
    
    <nav class="navbar navbar-light bg-light justify-content-between">
        <a class="navbar-brand">Cart System</a>
        <form class="form-inline">
            <div>
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </div>
        </form> 
    </nav>
    
    
    
        
        <br><br>
        
    <div class="container">
        <table class="table table-striped padding-bottom">   
            <thead>
                <tr>        
                    <th>Equipment Name</th>
                    <th>Equipment Description</th>
                    <th>Equipment Picture</th>
                    <th>Equipment Quantity</th>
                    <th>Equipment Price</th>
                    <th>Category</th>
                    <th>Acton</th>					
                </tr>
            </thead>

            <tbody>
                    <%

               Class.forName("com.mysql.jdbc.Driver").newInstance();
               Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/weblab","root","");         
                Statement stat = null; 
                ResultSet res = null; 
                stat = conn.createStatement();
                String query = request.getParameter("Search");

                String data; 
                if(query!=null){
                    data = "SELECT equipment_id,equipment_name,equipment_desc, equipment_pic,quantity,equipment_price,category FROM equipment JOIN quantity USING(equipment_id )where equipment_name like '%"+query+"%' or equipment_desc like '%"+query+"%' or equipment_pic like '%"+query+"%' or equipment_quantity like '%"+query+"%' or equipment_price like '%"+query+"%' or category like '%"+query+"%'";
                }else{
                    data = "SELECT equipment_id,equipment_name,equipment_desc, equipment_pic,quantity,equipment_price,category FROM equipment JOIN quantity USING(equipment_id )";
                }

                res = stat.executeQuery(data); 
        while(res.next()){
            %>
                <tr>
                    <td><%=res.getString("equipment_name")%></td>
                    <td><%=res.getString("equipment_desc")%></td>
                     <td><img src="stored/<%=res.getString("equipment_pic")%>"</td>
                     <td><%=res.getString("quantity")%></td>
                     <td><%=res.getString("equipment_price")%></td>
                     <td><%=res.getString("category")%></td>

                    <td>
                        <a href='addTrans.jsp'?u=<%=res.getString("equipment_id")%>>Purchase</a>
                    </td>
                </tr>
        <%}
    %>
            </tbody>
        </table> 
    </div>
    </body>
</html>







