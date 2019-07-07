
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String user= (String)session.getAttribute("username");
    if(user!=null){%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Admin Page</title>
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

<body id="page-top">
  <%@include file="adminbar.jsp" %>
 
  <!--/ Intro Skew Star /-->
  <div id="home" class="intro route bg-image" style="background-image: url(img/Indiaflag.jpg)">
    <div class="overlay-itro"></div>
    <div class="intro-content display-table">
      <div class="table-cell">
        <div class="container">
          <!--<p class="display-6 color-d">Hello, world!</p>-->
          <h1 class="intro-title mb-4">Online Voting Portal</h1>
          <p class="intro-subtitle">Welcome, <%=user%></p>
          <!-- <p class="pt-3"><a class="btn btn-primary btn js-scroll px-4" href="#about" role="button">Learn More</a></p> -->
        </div>
      </div>
    </div>
  </div>
  <!--/ Intro Skew End /-->

  <!--/ Section Services Star /-->
  
  <section id="service" class="services-mf route">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="title-box text-center">
            <h3 class="title-a title-left">
             Admin Actions
            </h3>
              <br/>
            
            <div class="line-mf"></div>
          </div>
        </div>
      </div>
      <div class="row">
        
        <div class="col-md-4 mx-auto">
          <div class="service-box">
            <div class="service-ico">
                <a href="http://localhost:8084/newparty.jsp"><span class="ico-circle"><i class="ion-android-add"></i></span></a>
            </div>
            <div class="service-content">
              <h2 class="s-title">Add Party</h2>
              <p class="s-description text-center">
                  <br/>
                  Add a new party to database
                  <br>
              </p>
            </div>
          </div>
        </div>
          <div class="col-md-4 mx-auto">
          <div class="service-box">
            <div class="service-ico">
                <a href="http://localhost:8084/delparty.jsp"><span class="ico-circle"><i class="ion-android-remove-circle"></i></span></a>
            </div>
            <div class="service-content">
              <h2 class="s-title">Delete Party</h2>
              <p class="s-description text-center">
                  <br/>
                  Delete a party from database
                  <br>
              </p>
            </div>
          </div>
        </div>
        <div class="col-md-4 mx-auto">
          <div class="service-box">
            <div class="service-ico">
                <a href="http://localhost:8084/viewvotes.jsp"> <span class="ico-circle"><i class="ion-android-star"></i></span></a>
            </div>
            <div class="service-content">
              <h2 class="s-title">Result</h2>
              <p class="s-description text-center">
               <br/>
                Result of total votes
                 <br/>
                  
              </p>
            </div>
          </div>
        </div>
        
      </div>
    </div>
  </section>
 
  <section id="about" class="about-mf sect-pt4 route">
    <div class="container">
      <div class="row mx-auto" >
        
                <div class="about-me pt-4">
                  <div class="title-box-2 ">
                    <h3 class="title-left title-a" >
                      ABOUT
                    </h3>
                  </div>
                  <p class="lead">
                    Admin webpage 
                  </p>
                  
                </div>
              
      </div>
    </div>
  </section>
  
  <!--/ Section Contact-footer End /-->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
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
%><jsp:forward page="signadmin.jsp"/>
<%}%>


