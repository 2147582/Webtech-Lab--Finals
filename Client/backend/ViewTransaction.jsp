<%-- 
    Document   : ViewTransaction
    Created on : 12 6, 18, 12:04:33 PM
    Author     : d524lab
--%>

<%@ page import ="java.sql.*" %>
<%@ page import ="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Transaction</title>
</head>
<body>
    <form action="" method="get">
 <input type="text" class="form-control" placeholder="Search...." name="Search">
    </form>
 <br><br>
<table id="okie">
<tr> 
                            <th>Transaction Id</th>
                            <th>User Id</th>
                            <th>Status</th>


</tr>

<%
           Class.forName("com.mysql.jdbc.Driver").newInstance();
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/weblab","root",""); 
            Statement stat = null; 
            ResultSet res = null; 
            try{
                stat = conn.createStatement();
                String query = request.getParameter("Search");
                String data; 
                if(query!=null){     
                    data = "SELECT transaction_id,user_id,status from transaction where user_id like '%"+query+"%'" ;
                }else{
                    data = "SELECT transaction_id,user_id,status from transaction";
                }

                
                res = stat.executeQuery(data); 
                
         
                
    while(res.next()){
     
        %>
        <tr>
                    <td><%=res.getString("transaction_id")%></td>
                    <td><%=res.getString("user_id")%></td>
                    <td><%=res.getString("status")%></td>    

                 
                </tr>
<%              }
            }catch(Exception e){
            }
%>
</table> 

<br>
<form  action="addTrans.html">
                <input type="submit" value="Add Transction Here">
        </form>





</body>
</html>