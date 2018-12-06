<%@ page import ="java.sql.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
<link rel="stylesheet" type="text/css" href="styles.css"/>

<sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/weblab"
        user="root"
        password=""
    />
<c:catch var ="catchException">
<sql:update dataSource="${myDS}">
    INSERT INTO transaction(user_id,equipment_Id,quantity_rented)
    VALUES (?, ?, ?)
    <sql:param>${param.ui}</sql:param>
    <sql:param>${param.ei}</sql:param>
    <sql:param>${param.q}</sql:param>  
</sql:update>

                <div>
         <p>Transaction are added successfully.</p>
                <br>      

                </div>
	      </c:catch>

      <c:if test = "${catchException != null}">
                  <div>
          <p> I'm sorry but you have encountered an error

             <p>
              <br>      
	<form action="Demo.jsp">
	  <button class="bot">Go back</button>
	  </form>
                </div>
      </c:if>					
    </body>
    </html>