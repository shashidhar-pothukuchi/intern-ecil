<% 
  if((String)session.getAttribute("username")!=null){
  }
 else{ 
      session.setAttribute("message","Login first!");
  }
    %><jsp:forward page="signin.jsp"/>
 <% }
%>
