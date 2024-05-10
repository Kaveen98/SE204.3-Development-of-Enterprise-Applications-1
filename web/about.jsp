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
        <title>About Us</title>
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
	<br>
	<br>
	<br>
	<div class="container" style="background-color:antiquewhite ;">
   <div class="row">
    <div class="col">
 <h2>Our Creations</h2><hr>

<p align="justify">Welcome to Arcana Candles, where we illuminate moments with the flicker of a flame and the scent of memories. Born from a passion for craftsmanship and a love for creating ambiance, we handcraft each candle with care and blending premium ingredients to evoke emotions and transform spaces. From cozy evenings curled up with a book to vibrant gatherings with loved ones, our candles are designed to complement every occasion. With sustainability at our core, we strive to minimize our environmental footprint while maximizing the joy our candles bring to your home. Join us in celebrating life's moments, one candle at a time</p>
   </div>
   <div class="col">
    <div class="image">
        <img src="images/pngtree-romantic-candle-light-spa-warm-candle-photo-image_519396.jpg">
      </div>
   </div>
  </div>
 </div>
        <br>
 <div class="container" style="background-color:azure ;">
   <div class="row">
 <div class="col">
    <div class="image">
        <img src="images/c5de3582293a274f88186cfedf222b68.jpg">
      </div>
 </div>
    <div class="col">

 <p align="justify">At Arcana Candles, we believe in the power of candles to elevate everyday moments into extraordinary experiences. With a dedication to quality craftsmanship and a commitment to sustainability, we pour our passion into every candle we create. Each fragrance is carefully curated, blending rich aromas to evoke nostalgia, inspire creativity, and soothe the soul. From the warm glow that fills a room to the subtle, lingering scent that lingers long after the flame is extinguished, our candles are crafted to enhance every aspect of your life. Whether you're seeking relaxation, inspiration, or simply a touch of ambiance, we invite you to explore our collection and discover the magic of rcana Candles.</p>
	  </div>
  
  </div>
 </div>
        <br><br>
	
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
