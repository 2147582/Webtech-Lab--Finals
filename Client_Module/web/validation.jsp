<%-- 
    Document   : validation
    Created on : 12 5, 18, 1:49:22 AM
    Author     : Michael Jericho Dariano

A java servlet page that validates the user input to by checking the database to
determine if the user have already registered.
--%>
<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log In</title>
    </head>
    <body>
        
        <div style="float:right;">
        <%
        
        String uname = request.getParameter("Uname");
        String pass = request.getParameter("psw");   
        
        String username = "";
        String password = "";
        String role = "";
        String query;
       Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/weblab2","root","");
            query = "SELECT user_name,password,role FROM users WHERE user_name = '"+uname+"' AND password = '"+pass+"' ";
            
            PreparedStatement os = conn.prepareStatement(query);
            ResultSet rs = os.executeQuery();
            
           while(rs.next()){
               // out.println("Welcome" + " " + uname);
               username = rs.getString("user_name");
               password = rs.getString("password");
               role = rs.getString("role");
               
               if(role.equalsIgnoreCase("admin")){
                   String adminRedirect = "http://localhost/COYCOY/adminsystem/admin/";
                   response.sendRedirect(adminRedirect);
               }else if(role.equalsIgnoreCase("client")){
                  // String clientRedirect = "";
                  // response.sendRedirect(clientRedirect);
               }else if (username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")){
                   String superadminRedirect = "http://localhost/COYCOY/adminsystem/superadmin/";
                   response.sendRedirect(superadminRedirect);
               }else{
               out.println("Please register first");
               
               }
           }
        
        %>
        </div>
    </body>
</html>
