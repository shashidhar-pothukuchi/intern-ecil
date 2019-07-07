<%@page import="java.sql.Date"%>
<%@include file="connection.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <!DOCTYPE html>
 <html>
     <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>JSP Page</title>
     </head>
     <body>
         <%
             String a=request.getParameter("name");
             String b=request.getParameter("voterid");
             String c=request.getParameter("aadhaarid");
             String d=request.getParameter("mobilenumber");
             String e=request.getParameter("dateofbirth");
             String f=request.getParameter("gender");
             String g=request.getParameter("username");
             String h=request.getParameter("password");
             String i=request.getParameter("password");
           if(h.equals(i)){  
             
PreparedStatement ps=con.prepareStatement("insert into register values(?,?,?,?,?,?,?,?)");
 
ps.setString(1,a);
ps.setString(2,b);
ps.setString(3,c);
ps.setString(4,d);
ps.setString(5,e);
ps.setString(6,f);
ps.setString(7,g);
ps.setString(8,h);
 
int k=ps.executeUpdate();
if(k!=0)
{ session.setAttribute("message","inserted successfully");
    %>
    <jsp:forward page="signin.jsp"/>
<%    
}
           }
%>


     </body>
 </html>
}
