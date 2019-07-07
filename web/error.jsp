<%-- 
    Document   : error
    Created on : Dec 14, 2018, 12:10:37 PM
    Author     : Saketh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
    </head>
    <body>
        <h1 align="center" style="color:paleturquoise">wrong credentials</h1>
        <br><br><br><br>
        <% session.setAttribute("message","Invalid Credentials");
        %>
        <p><a href="http://localhost:8084/signin.jsp">click here</a> to login </p> 
    </body>
</html>
