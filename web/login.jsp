<%@page import="java.util.List"%>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <link href="css/bootstrap-4.4.1.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet">
        <link rel="shortcut icon" href="images/favicon.ico"/>
    </head>
    
    <body>
        
<div class="container-fluid">
<div class="container">
    <%@include file ="includes/navbar.jsp" %>
    
	<br>
        <br>
        <br>
        
	<%@include file="includes/carouselSlide.jsp" %>
<p>&nbsp;</p>
	<br>
	<br>
	<h1 class="text-center"></h1>
	<h1 class="pop-icon"  align="center">“WELCOME TO ARCANA CANDLES WHERE INSPIRATION MEETS ILLUMINATION”</h1>
	<p>&nbsp;</p>
	
        <form action="LoginServlet" method="post" name="log1">
            <table>
                <tbody>
                    <tr>
                        <td>Username: </td>
                        <td colspan="2"><input type="text" name="username" value="" size="30"/></td>
                    </tr>
                    <tr>
                        <td>Password: </td>
                        <td colspan="2"><input type="password" name="password" value="" size="30"/></td>
                    </tr>
                      <tr>
                          <td><input type="submit" value="Login" /></td>
                          <td><input type="reset" value="Clear" /></td>
                    </tr>
                </tbody>
            </table> <br> 
        </form>
              <h1 class="" align="center">ELEVATE YOUR <b>SPACE</b>, ENHANCE YOUR <b>MOOD</b>, AND EMBRACE <b>PURE BLISS...</b></h1>
    
              <form action="signup.jsp" method="post" name="signup">
                  <h4 align="center">Join with us</h4>
                  <center>  <input type="submit" value="SignUp" /> </center>
              </form>
                    <br><br><br><br><br>
              
              <form action="adminlogin.jsp" method="post" name="adsignup">
                  <center>  <input type="submit" value="Admin-Login" /> </center>
              </form>
           
	
	<br>
	<%@include file="includes/footer.jsp" %>
        
                         
	<br>	
</div>
</div>
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap-4.4.1.js"></script>
<script src="js/script2.js"></script>

    </body>
    
</html>
