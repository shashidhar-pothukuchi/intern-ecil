
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connection.jsp" %>
<% 
    String user= (String)session.getAttribute("username");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("Select * from register where username ='"+user+"'");
    rs.next();
    if(user!=null){%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        .form-spacing{
            margin:30px;
        }
        label{
            margin-left: 250px;
        }
       </style>
  <meta charset="utf-8">
  <title>Edit Profile</title>
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

<body style="background-image: url(img/unsplash-pillar.jpg); background-repeat: no-repeat;background-size: auto;">
  <%@include file="userbar.jsp" %>
  <section id="page-top" style="margin-top:150px;">
      
  <div class="row">
        <div class="col-md-8 mx-auto">
          <div class="service-box">
            
            <div class="service-content">
              <h2 class="s-title"><%=user%> Profile</h2>
  <div class="form-group form-spacing ">
      <label>Email</label>
      <span style="margin-left:80px"></span><%=rs.getString(1) %>
  </div>
  <div class="form-group form-spacing ">
    <label>Username</label>
    <span style="margin-left:80px"></span><%=rs.getString(7) %>
  </div>
  <div class="form-group form-spacing ">
    <label>Voter ID</label>
    <span style="margin-left:80px"></span><%=rs.getString(1) %>
  </div>
  <div class="form-group form-spacing ">
    <label>Aadhar Number</label>
          <span style="margin-left:80px"></span> <%=rs.getString(3) %>
  </div>
  <div class="form-group form-spacing ">
    <label>Mobile No.</label>
    <span style="margin-left:80px"></span><%=rs.getString(4) %>
  </div>
 <div class="form-group form-spacing ">
    <label >Date Of Birth</label>
    <span style="margin-left:80px"></span><%=rs.getString(5) %>
  </div>
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
