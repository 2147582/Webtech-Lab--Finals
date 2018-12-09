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
        <%
        
        String uname = request.getParameter("Uname");
        String pass = request.getParameter("psw");   
        String query;
       Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/weblab","root","");
            query = "SELECT * FROM users WHERE user_Name = '"+uname+"' AND password = '"+pass+"' ";
            
            PreparedStatement os = conn.prepareStatement(query);
            ResultSet rs = os.executeQuery();
            
            if(rs.next()){
                out.println("Welcome" + " " + uname);
                response.sendRedirect("index.jsp");
            }else{
                out.println("Please register first!");
            }
        
        %>
    </body>
</html>
