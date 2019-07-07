
<%@include file="connection.jsp" %> 
<% 
    String user= (String)session.getAttribute("username");
    if(user!=null){%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Votes</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">
  <link href="img/EC.png" rel="icon">
  <link href="img/EC.png" rel="apple-touch-icon">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

  <link href="css/style.css" rel="stylesheet">
</head>

<body style="background-image: url(img/munnar.jpg); background-repeat: no-repeat;background-size: 1500px 1000px;">
  <%@include file="adminbar.jsp" %>
  <section style="margin-top:100px;">
      
  <div class="row">
        <div class="col-md-11 mx-auto">
          <div class="service-box">
              
            <div class="service-content">
              <h2 class="s-title">List of Votes</h2>
              <div class="text-center" style="margin-top: 50px">
                  <a href="http://localhost:8084/votecount.jsp"<button class="btn btn-primary">View Count</button></a></div>
              <div align="center" style="margin-top: 50px">
              <table width="60%" class="table">
               <tr style="margin-bottom: 20px">
                 <td align="center"><h5>Aadhar ID</h5></td>
                   <td align="center"><h5>Party name</h5></td>
                     
               
                  
               </tr>
               <tbody>
                   <%
                        
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery("select * from countr");
                        while(rs.next())
                        {
                        %>
<tr>
    <td align="center"><%=rs.getString(1)%></td>
    <td align="center"><%=rs.getString(2)%></td>
    
    
    
    
</tr>

                   <%}
                    %>
                    
                   
               </tbody>
           </table>
              </div>
            </div>
          </div>
        </div>
  </div>
  </section>
   <div id="preloader"></div>
  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/popper/popper.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/counterup/jquery.waypoints.min.js"></script>
  <script src="lib/counterup/jquery.counterup.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/lightbox/js/lightbox.min.js"></script>
  <script src="lib/typed/typed.min.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>
    </body>
</html>

<%} 
else{
session.setAttribute("message","You are not logged in!");
%><jsp:forward page="signin.jsp"/>
<%}%>


