<%-- 
    Document   : login
    Created on : 12 5, 18, 1:40:31 AM
    Author     : Michael Jericho Dariano
User interface for the log in page.

**Note this page will be updated for css and other functionalites**
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log In</title>
    </head>
    <body>
        <h1>LogIn</h1>
        <form action="validation.jsp" method="GET">
            <table>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="Uname" value="" placeholder="User Name" required /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="psw" value="" placeholder="Password" required/></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Login"/>
        </form>
        
    </body>
</html>
