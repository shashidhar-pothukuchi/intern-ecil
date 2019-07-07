
<%@include file="connection.jsp" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
 
 <html>
     <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>JSP Page</title>
     </head>
     <body>
         <%
             String name=request.getParameter("name");
             Statement st=con.createStatement();
          st.executeUpdate("delete from register where name='"+name+"'");
             out.println("deleted successfully");
            
%>
     </body>
 </html>