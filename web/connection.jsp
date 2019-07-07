<html> 
    <head>   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <titleJSP Page</title>
    
    </head>
    <body>
        <%@page import="java.sql.*"%>
        <%@page import="java.io.*" %>
        <%! Connection con;%>
        <% Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aadhar1","root","root");
        out.println("Connected");
        %>
    </body>
    </html>
    
