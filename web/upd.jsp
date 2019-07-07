
<%@include file="connection.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <!DOCTYPE html>
 <html>
     <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     </head>
     <body>
         <%
             String mainuser=(String)session.getAttribute("username");
             String name=request.getParameter("name");
             String username=request.getParameter("username");
             
             String mobilenumber=request.getParameter("mobilenumber");
             String dateofbirth=request.getParameter("dateofbirth");
             
             String password=request.getParameter("password");
             String confirmpassword=request.getParameter("confirmpassword");
 if(password.equals(confirmpassword)){            
             
PreparedStatement ps=con.prepareStatement("Update register set name=?,mobilenumber=?,dateofbirth=?,username=?,password=? where username='"+mainuser+"'");
 

ps.setString(1,name);
ps.setString(2,mobilenumber);
ps.setString(3,dateofbirth);
ps.setString(4,username);
ps.setString(5,password);
 
int k=ps.executeUpdate();
if(k!=0)
{
    out.println("update successfully");
    %><jsp:forward page="viewprofile.jsp"/><%
}
}
%>


     </body>
 </html>
}

