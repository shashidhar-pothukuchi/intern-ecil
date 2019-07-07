<%@include file="connection.jsp" %>
        <!DOCTYPE html>
        <html>
            <head>
               
                <title>JSP Psge</title>
            </head>
            <body>
                 
                <table border="1">
                    <tr>
                        
                    <th>Canname</th>
                        <th>Carea</th>
                        <th>Cpn</th>
                        <th>Cps</th>
                
                    </tr>
                <%
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from party");
                    while(rs.next())
                    {
                        %>
                        <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                                <td><%=rs.getString(3)%></td>
                                    <td><%=rs.getString(4)%></td>
                                      
    <%
        }
%>
                </table>
            </body>
        </html>
