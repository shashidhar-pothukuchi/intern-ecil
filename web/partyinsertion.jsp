<%-- 
    Document   : insertion
    Created on : Sep 16, 2013, 4:09:07 PM
    Author     : Administrator
--%>
<%@ include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        
             String name=request.getParameter("name");
           
             String address=request.getParameter("address");
             String dob=request.getParameter("dob");
             String phone=request.getParameter("contact");
              String mail=request.getParameter("email");
        
       
  
            PreparedStatement ps=con.prepareStatement("INSERT INTO PARTY_REGISTRATION VALUES(?,?,?,?,?)");
                ps.setString(1,name);
            ps.setString(2,address);
         ps.setString(3,dob);
        ps.setString(4,phone);
        ps.setString(5,mail);
       
        ps.executeUpdate();
        out.println("inserted successfully");
        %>
    
    </body>
</html>

