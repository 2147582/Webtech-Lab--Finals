<%-- 
    Document   : action
    Created on : 12 3, 18, 10:56:30 PM
    Author     : Michael Jericho Dariano

A java servlet page that stores the the data inputed by the users to the database.
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
        <title>Registration</title>
    </head>
    <body>     
     
     <%  
            String fname = request.getParameter("fname").toString();
            String Lname = request.getParameter("Lname").toString();
            String Uname = request.getParameter("Uname").toString();
            String pass = request.getParameter("psw").toString();
            String role = request.getParameter("role").toString();
            try{
            
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/weblab2","root",""); 
            Statement stat = null; 
            
            
                stat = conn.createStatement();
                String data; 
                
                data = "INSERT INTO users (first_Name,last_Name,user_Name,password,role)VALUES ('"+fname+"','"+Lname+"','"+Uname+"','"+pass+"','"+role+"')";
                
                stat.executeUpdate(data);
                
                out.println("data inserted");
            }
            catch(Exception e){
                out.println(e);
            }
        %>    
     
    </body>
</html>
