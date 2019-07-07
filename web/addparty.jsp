
<%@page import= "java.sql.PreparedStatement"%>
<%@ include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PARTY</title>
    </head>
    <body>
        <%
        String partyname=request.getParameter("partyname");
        PreparedStatement ps=con.prepareStatement("INSERT INTO partyd VALUES(?)");
                ps.setString(1,partyname);
         
        
        ps.executeUpdate();
        out.println("Party added successfully");
        %><jsp:forward page="adminpartylist.jsp"/>
        %>
    </body>
</html>

