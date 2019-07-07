
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FINAL</title>
    </head>
    <body>
        <%
              String aadhaarid=request.getParameter("name");
        String partyname=request.getParameter("partyname");
        PreparedStatement ps=con.prepareStatement("INSERT INTO countr VALUES(?,?)");
             ps.setString(1,aadhaarid);
             ps.setString(2,partyname);
             int k= ps.executeUpdate();
             if(k==1)
             {
              out.println("vote received");
              %><jsp:forward page="voted.jsp"/><%
             }
             else
             {
              out.println("Your vote is already recieved"); 
             }
            
            
            %>
    </body>
</html>