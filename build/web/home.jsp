<%@ include file="user.html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
    String id=(String)session.getAttribute("username");
    %>
    <marquee><h3>Welcome <%=id%></h3></marquee>
    <center><h3>WELCOME</h3></center>
    <center><h4>VOTE IS A RESPONSIBILITY</h4></center>
    <center><h5>RIGHT TO VOTE!!!!!!</h5></center>
</body>
</html>
