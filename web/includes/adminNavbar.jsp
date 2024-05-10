<%@page import="java.util.List"%>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<nav class="navbar navbar-expand-lg navbar-light bg-light" style = "position: fixed; top: 0;left: 0;  right: 0;  z-index: 1000;  background-color: #fff;  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); "> <a class="navbar-brand" href="index.jsp"><img src="images/Untitled design (1) (1).png" class="card-img-top" alt="..." width="35px" height="35px"></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation"> <span 	class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent1">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active"> <a class="nav-link card-img-top" href="index.jsp">Home <span class="sr-only">(current)</span></a> </li>
		  <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle card-img-top" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Products&nbsp; </a>
            <div class="dropdown-menu " aria-labelledby="navbarDropdown1"> 
                <a class="dropdown-item card-img-top" href="allproducts.jsp"><b><i>&nbsp;&nbsp;&nbsp;&nbsp;All Products</i></b></a>
				<a class="dropdown-item card-img-top" href="tranquil.jsp">Tranquil oasis</a> 
				<a class="dropdown-item card-img-top" href="romantic.jsp">Romantic glow</a>
				<a class="dropdown-item card-img-top" href="soothing.jsp">Soothing Serenity</a>
				<a class="dropdown-item card-img-top" href="euphoric.jsp">Euphoric Bliss</a>
				<a class="dropdown-item card-img-top" href="enchanted.jsp">Enchanted Forest</a>
				<a class="dropdown-item card-img-top" href="moonlight.jsp">Mystical Moonlight</a>
                                <a class="dropdown-item card-img-top" href="divine.jsp">Divine Harmony</a>
              </div>
          </li>
          <li class="nav-item"> 
                  <li class="nav-item">  <a class="nav-link card-img-top" href="about.jsp">About Us&nbsp;</a> </li>
		  <li class="nav-item"> <a class="nav-link card-img-top" href="service.jsp">Services&nbsp;</a> </li>
		  <li class="nav-item"> <a class="nav-link card-img-top" href="contact.jsp">Contact Us</a> </li>

                  
                  <% if(session.getAttribute("admin_id") == null) {%>
                  <p>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </p>
                    <li class="nav-item">
                        <button class="navbar-button" onclick="location.href='adminlogin.jsp';">Admin Login</button>
                    </li>
                <% }else {%>
                    <p>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </p>
                    <li class="nav-item">
                        <button class="navbar-button" onclick="location.href='adminlogout.jsp';">Admin Logout</button>
                    </li>
                    
                <% }%>
        </ul>
      </div>
    </nav>
        