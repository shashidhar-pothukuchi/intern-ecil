<%@include file="connection.jsp" %>
        <!DOCTYPE html>
        <html>
            <head>
               
                <title>JSP Psge</title>
            </head>
            <body>
                 
                <table border="1">
                    <tr>
                        
                    <th>Vname</th>
                        <th>Vvid</th>
                        <th>Vaid</th>
                        <th>Vmobile</th>
                        <th>Vdob</th>
                        <th>Vgender</th>
                        <th>Vusern</th>
                        <th>Vnewp</th>
                    </tr>
                <%
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from register");
                    while(rs.next())
                    {
                        %>
                        <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                                <td><%=rs.getString(3)%></td>
                                    <td><%=rs.getString(4)%></td>
                                        <td><%=rs.getString(5)%></td>
                                            <td><%=rs.getString(6)%></td>
                                                <td><%=rs.getString(7)%></td>
                    <td><%=rs.getString(8)%></td></tr>
    <%
        }
%>
                </table>
            </body>
        </html>
    
                        