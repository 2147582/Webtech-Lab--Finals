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
                            <th>Equipment Name</th>
                            <th>Equipment Description</th>
                            <th>Equipment Picture</th>
                            <th>Equipment Price</th>
                            <th>Category</th>
                            <th>Equipment Quantity</th>
                            <th>Added Date</th>

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
                    data = "SELECT equipment_name,equipment_desc,equipment_pic,equipment_price,category,equipment_quantity,added_date from equipment where equipment_name like '%"+query+"%' or category like '%"+query+"%'" ;
                }else{
                    data = "SELECT equipment_name,equipment_desc,equipment_pic,equipment_price,category,equipment_quantity,added_date from equipment";
                }

                
                res = stat.executeQuery(data); 
                
         
                
    while(res.next()){
     
        %>
        <tr>
                    <td><%=res.getString("equipment_name")%></td>
                    <td><%=res.getString("equipment_desc")%></td>
                    <td><%=res.getString("equipment_pic")%></td>    
                    <td><%=res.getString("equipment_price")%></td>
                    <td><%=res.getString("category")%></td>
                    <td><%=res.getString("equipment_quantity")%></td>
                    <td><%=res.getString("added_date")%></td>

                 
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