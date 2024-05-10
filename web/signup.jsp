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
        <title>Home</title>
        <link href="css/bootstrap-4.4.1.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet">
        <link rel="shortcut icon" href="images/favicon.ico"/>
    </head>
    
    <body>
                    <% 
                    session = request.getSession();
                    Integer TranquilCount = (Integer) session.getAttribute("TranquilCount");
                    Integer RomanticCount = (Integer) session.getAttribute("RomanticCount");
                    Integer SoothingCount = (Integer) session.getAttribute("SoothingCount");
                    Integer EuphoricCount = (Integer) session.getAttribute("EuphoricCount");
                    Integer EnchantedCount = (Integer) session.getAttribute("EnchantedCount");
                    Integer MoonlightCount = (Integer) session.getAttribute("MoonlightCount");
                    Integer DivineCount = (Integer) session.getAttribute("DivineCount");
                    String userid = (String) session.getAttribute("userid");
                 %>
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
	
      
    <style>
        .center {
            text-align: center;
        }
        h2 {
            color: red;
        }
    </style>
    <br>
    
<body>
    <div class="center">
        <h2><strong>Sign-up Form</strong></h2>
    </div>
    <form action="UserServlet" method="post" border="1">
        <label for="username">Username: </label>
        <input type="text" id="username" name="username" required><br><br>
        
        <label for="contactno">Contact No. : </label>
        <input type="text" id="contactno" name="contactno" required><br><br>
        
        <label for="address">Address : </label>
        <input type="text" id="address" name="address" required><br><br>

        <label for="email">Email: </label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="password">Password: </label>
        <input type="password" id="password" name="password" required><br><br>

        <label for="confirm_password">Confirm Password: </label>
        <input type="password" id="confirm_password" name="confirm_password" required><br><br>

        <input type="submit" value="Signup">
    </form>
  
	<br>
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

