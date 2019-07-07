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
             String partyname=request.getParameter("partyname");
             Statement st=con.createStatement();
          st.executeUpdate("delete from partyd where partyname='"+partyname+"'");
             out.println("deleted successfully");
             %><jsp:forward page="adminpartylist.jsp"/><%
            
%>
     </body>
 </html>
