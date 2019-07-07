<%@include file="connection.jsp" %> 

<% 
    String user= (String)session.getAttribute("username");
    if(user!=null){
         Statement st=con.createStatement();
         ResultSet rs= st.executeQuery("select * from register where username='"+user+"'");
        rs.next();
    %>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Login Page</title>
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

<body style="background-image: url(img/mosque.jpg); background-repeat: no-repeat;background-size: 1500px 1000px;">
  <%@include file="userbar.jsp" %>
  <section style="margin-top:100px;">
      
  <div class="row">
        <div class="col-md-11 mx-auto">
          <div class="service-box">
              
            <div class="service-content">
              <h2 class="s-title">Cast Your Vote</h2>
              
              <form action="election.jsp" method="post">
  <div class="form-group">
    <label for="aadhar">Aadhar Number</label>
    <input type="text" class="form-control" id="aadhar" name="name" aria-describedby="emailHelp" placeholder="xxxx-xxxx-xxxx" 
           value="<%=rs.getString(3)%>" >
  </div>
  
 
  <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Area</label>
  <select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref">
    <option selected>Choose...</option>
    <option value="VSKP">VSKP</option>
    <option value="HYD">HYD</option>
    <option value="MAS">MAS</option>>
  </select>
  <fieldset class="form-group">
      <legend class="col-form-label  pt-0">Party</legend>
      <%
      Statement nst=con.createStatement();
      ResultSet nrs = nst.executeQuery("select * from partyd");
      while(nrs.next()){
      %>
      <div class=" text-center">
        <div class="form-check" style="margin:20px">
          <input class="form-check-input" type="radio" name="partyname" id="gridRadios1" value="<%=nrs.getString(1)%>">
          <label class="form-check-label" for="gridRadios1">
            <%=nrs.getString(1)%>
          </label>
        </div>
        
      </div>
      <%}%>
  </fieldset>
  
   
  <div class="text-center" style="margin:30px">
   <button type="submit" style="" class="btn btn-primary">Vote</button>
  </div>
</form>
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