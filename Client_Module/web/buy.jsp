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
            String q = request.getParameter("q").toString();
            String id = request.getParameter("id").toString();
            String ui = request.getParameter("ui").toString();
            try{
            
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/weblab","root",""); 
            Statement stat = null; 
            
            
                stat = conn.createStatement();
                String data; 
                
                data = "INSERT INTO transaction (quantity_rented ,equipment_id ,user_id)VALUES ('"+q+"','"+id+"','"+ui+"')";
                
                stat.executeUpdate(data);
                
                out.println("data inserted");
            }
            catch(Exception e){
                out.println(e);
            }
        %>    
     
    </body>
</html>
