<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
    </head>
    <body>
        <% session.setAttribute("username", null);
            session.setAttribute("message",null); %>
            <h2 align="center" style="color:paleturquoise">You have successfully been logged out!</h2>
     <div align="center"><br><br><a href="http://localhost:8084/signin.jsp">click here</a> to login again.<br><br><br><br><br><br>
         <p><a align="center" href="http://localhost:8084/index.jsp">Click here</a> to go to Home page</p></div>
    </body>
</html>
