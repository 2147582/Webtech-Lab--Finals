

<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

 

<html>
<head>

    <title>Search</title>
    <style>
        #search {
            border-collapse:collapse;
            width: 100%;
        }
        
        #search td, #search th{
            border: 1px solid #ddd;
            padding: 8px;
        }
        
        #search tr:nth-child(even){background-color: #f2f2f2;}
        
        #search tr:hover {background-color: #ddd;}
        
        #search th{
            padding-top:12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #12345678;
            color: white;     
        }
        
        #key_word tr, #key_word th{
            background-color: #ddd;
            border: 1px solid #ddd;
        }
        
    </style>
</head>

<body>

<%

    String keyword = "";

    if(request.getParameter("txtKeyword") != null) {

    keyword = request.getParameter("txtKeyword");

    }

%>

 

    <form name="frmSearch" method="get" action="index.jsp">
        <table id="key_word" width="599" border="1">

            <tr>

                <th>

                <input name="txtKeyword" type="text" id="txtKeyword" value="<%=keyword%>">

                <input type="submit" value="Search"></th>

            </tr>

        </table>

    </form>

 

    <%

    Connection connect = null;
    Statement s = null;

        try {

            Class.forName("com.mysql.jdbc.Driver");

            connect =  DriverManager.getConnection("jdbc:mysql://localhost/weblab" +

            "?user=root&password=");

            s = connect.createStatement();


            String sql = "SELECT * FROM  equipment WHERE equipment_name like '%" +  keyword + "%' or category like '%" +  keyword + "%'";


            System.out.println(sql);


            ResultSet rec = s.executeQuery(sql);

            %>

            <table id="search" width="600" border="1">

                <tr>

                    <th width="91"> <div align="center">Equipment ID</div></th>

                    <th width="98"> <div align="center">Equipment Code</div></th>

                    <th width="198"> <div align="center">Equipment Name</div></th>

                    <th width="97"> <div align="center">Equipment Description</div></th>

                    <th width="59"> <div align="center">Equipment Picture</div></th>

                    <th width="71"> <div align="center">Equipment Price</div></th>
                    
                    <th width ="71"> <div align="center">Equipment Category</div></th>
                    
                    <th width ="200"> <div align="center">Date Added</div></th>

                </tr>    

                    <%while((rec!=null) && (rec.next())) { %>

                        <tr>

                            <td><div align="center"><%=rec.getString("equipment_id")%></div></td>

                            <td><%=rec.getString("equipment_code")%></td>

                            <td><%=rec.getString("equipment_name")%></td>

                            <td><div align="center"><%=rec.getString("equipment_desc")%></div></td>

                            <td align="right"><%=rec.getString("equipment_pic")%></td>

                            <td align="right"><%=rec.getString("equipment_price")%></td>
                            
                            <td align="right"><%=rec.getString("category")%></td>
                            
                            <td align="right"><%=rec.getString("added_date")%></td>

                        </tr>

                    <%}%>

            </table>     

            <%  

        } catch (Exception e) {

            // TODO Auto-generated catch block

            out.println(e.getMessage());

            e.printStackTrace();

            }



        try {

            if(s!=null){

            s.close();

            connect.close();

            }

        } catch (SQLException e) {

            // TODO Auto-generated catch block  

            out.println(e.getMessage());

            e.printStackTrace();

        }

    %>

</body>

</html>
