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
        <title>Mystical Moonlight</title>
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
	<div class="para-euphoric">
	<img class="pop-icon" id="pop-icon" src="images/IMG-20240320-WA0183.png" alt="Icon" style="float:left; margin-right:10px;"  height="300px">
    <h1 style="font-size: 65px;filter: drop-shadow(8px 10px 7px rgb(0 0 0 / 0.4));"><b>Mystical Moonlight....</b></h1>
	<br>
	<p style="font-size: 25px;">A mysterious blend of <b>jasmine and sandalwood</b>, inspired by the magic of moonlit nights and designed to awaken your senses and ignite your<b> imagination</b>.</p>
	<h1 style="font-size: 35px;"><b>LKR 1139.00</b></h1><form action="CartServlet" method="post">
        <button type="submit" class="button" name="moonlight_count_+">ADD TO CART</button></form>
         <br>
        <br>
	<h1 style="font-size: 35px;"><span class="topic"><b>Description</b></span>
	  <hr class="line"></h1>
<br>
  <h1 style="font-size: 25px;"><b>Highlights</b></h1>
 <ul style="font-size: 19px;">
 <li>Mysterious blend of jasmine and sandalwood fragrances</li>
 <li>Inspired by the magic of moonlight nights</li>
 <li>Provides a soothing ambiance for relaxation and reflection</li>
 <li>Presented in a chic tin container for a touch of enchantment</li>
</ul>
<br>
<h1 style="font-size: 25px;"><b>Ingredients</b></h1>
 <ul style="font-size: 19px;">
 <li>Our candles are meticulously hand-poured using locally sourced premium paraffin wax, guaranteeing a clean and enduring burn.</li>
 <li>With 100% cotton core wicks and exquisite fine fragrance oils and essential oils, each candle offers an unparalleled sensory journey. Plus, our reusable tin conterner add extra value to your investment in luxury ambiance.</li>
</ul>
<br>
  <h1 style="font-size: 25px;"><b>Rituals</b></h1>
 <ul style="font-size: 19px;">
 <li>Prepare for a journey into the realms of imagination by lighting the Mystical Moonlight candle in a quiet, darkened space.</li>
 <li>Close your eyes and take several deep breaths, allowing the mysterious blend of jasmine and sandalwood to transport you to a moonlit night.</li>
 <li>Visualize yourself standing beneath a canopy of stars, feeling the cool night air on your skin and the soft glow of the moon above.</li>
 <li>Allow your mind to wander freely, exploring the depths of your imagination and embracing the magic of the unknown.</li>
 <li>Spend time engaging in creative activities such as writing, drawing, or storytelling, allowing the mystical energy of the candle to inspire you.</li>
 <li>As you bask in the enchanting atmosphere of the candle, reflect on the mysteries of the universe and the infinite possibilities that lie ahead.</li>
 <li>Carry this sense of wonder and imagination with you as you go about your day, knowing that the magic of the moonlight is always there to guide you.</li>
</ul>
<br>
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
