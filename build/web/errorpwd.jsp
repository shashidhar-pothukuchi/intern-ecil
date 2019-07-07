<%-- 
    Document   : errorpwd
    Created on : Dec 14, 2018, 12:11:34 PM
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
        <% session.setAttribute("message","Invalid Credentials");
        %>
        <h1 align="center" style="color:paleturquoise">Incorrect password</h1>
        <p><a href="http://localhost:8084/signin.jsp">click here</a> to login</p>
    </body>
</html>
