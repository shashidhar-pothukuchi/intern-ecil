<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Statement st=con.createStatement();
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            session.setAttribute("username",username);
            ResultSet rs=st.executeQuery("select password,username from register where username='"+username+"'");
            if(rs.next())
            {
                String p=rs.getString(1);
                String u=rs.getString(2);
                if(p.equals(password)&&u.equals(username))
                {
                    %>
                    <jsp:forward page="userhome.jsp"/>
                    <%
                }
            else
{%>
<jsp:forward page="errorpwd.jsp"/>
        <%
            }
}
else
{
%>
<jsp:forward page="error.jsp"/>
<%
}
    %>   
    </body>
</html>