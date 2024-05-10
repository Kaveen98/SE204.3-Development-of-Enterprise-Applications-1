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
        <title>Services</title>
        <link href="css/bootstrap-4.4.1.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet">
        <link href="images/favicon.ico" rel="shortcut icon">
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
  <br>
  <br>
  <h1 style="font-size: 30px;"><span class="topic">Chose Your Emotion</span>
    <hr class="line"></h1>
  <br>
  <br>
  <h1 class=""  align="center">ELEVATE YOUR <b>SPACE</b>, ENHANCE YOUR <b>MOOD</b>, AND EMBRACE <b>PURE BLISS...</b></h1>
  <br>
  <br>
  <br>
  <br>
<%@include file="includes/productSlide.jsp" %>
  <br>
  <br>
  <br>
<div class="container" style="background-color:antiquewhite ;">
   <div class="row">
    <div class="col">
 <h2>Our Service</h2><hr>
 <h5>Discover Your Perfect Flame:</h5>
		<p > Explore our extensive collection of candles, featuring a captivating range of scents, sizes, colors, and styles. Whether you seek a calming lavender aroma for relaxation, a burst of citrus to energize your space, or a captivating blend for a luxurious ambiance, we have the perfect candle to ignite your senses.</p>

<h5>Informed Candle Choices:</h5> 
			<p >	We believe in transparency. Each candle description provides detailed information about the fragrance profile, allowing you to visualize the scent journey. You'll also find details on burn time to ensure long-lasting enjoyment and a breakdown of ingredients for those seeking natural or eco-friendly options.</p>

   </div>
   <div class="col">
    <div class="image">
        <img src="images/3428c3e7b29082ee0bf43c5608523cfc.jpg">
      </div>
   </div>
  </div>
 </div>
 
 <div class="container" style="background-color:azure ;">
   <div class="row">
 <div class="col">
    <div class="image">
        <img src="images/4ce81b4caf289cd083b92e0888843f87.jpg">
      </div>
 </div>
       <br>
    <div class="col">
 <h2>Our Service</h2><hr>
 <h5>Effortless Shopping & Secure Transactions:</h5> <p> Our user-friendly website makes navigating and selecting your perfect candle a breeze. Add your favorites to your cart with a few clicks, and experience a smooth checkout process with secure payment gateways that ensure your peace of mind. <p>

<h5>Dedicated Customer Support:</h5> <p> We're passionate about candles and here to help!  Our comprehensive FAQ section addresses common inquiries. If you have any further questions or specific needs, feel free to contact our friendly customer support team through email or chat.  We're happy to assist you in finding the ideal candle or answer any questions you may have.</p>
   
	  </div>
  
  </div>
 </div>
  <br>
  <br>
  <br>
  <%@include file="includes/feedbackAccordion.jsp" %>
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
