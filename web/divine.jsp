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
        <title>Divine Harmony</title>
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
	<div class="para-euphoric">
	<img class="pop-icon" id="pop-icon" src="images/IMG-20240320-WA0145 (1).png" alt="Icon" style="float:left; margin-right:10px;"  height="300px">
    <h1 style="font-size: 65px;filter: drop-shadow(8px 10px 7px rgb(0 0 0 / 0.4));"><b>Divine Harmony....</b></h1>
	<br>
	<p style="font-size: 25px;">A harmonious blend of <b>vanilla and amber</b>, creating a warm and inviting atmosphere that promotes a sense of <b> balance and inner peace</b>.</p>
	<h1 style="font-size: 35px;"><b>LKR 1139.00</b></h1><form action="DivineCountAdd" method="post">
        <button type="submit" class="button">ADD TO CART</button></form>
        <br>
        <br>
	<h1 style="font-size: 35px;"><span class="topic"><b>Description</b></span>
	  <hr class="line"></h1>
<br>
  <h1 style="font-size: 25px;"><b>Highlights</b></h1>
 <ul style="font-size: 19px;">
 <li>Harmonious blend of vanilla and amber fragrances</li>
 <li>Creates a warm and inviting atmosphere</li>
 <li>Promotes a sense of balance and inner peace</li>
 <li>Made with premium soy wax for a clean and even burn</li>
 <li>Housed in an elegant glass jar to elevate any space</li>
</ul>
<br>
<h1 style="font-size: 25px;"><b>Ingredients</b></h1>
 <ul style="font-size: 19px;">
 <li>Our candles are meticulously hand-poured using locally sourced premium paraffin wax, guaranteeing a clean and enduring burn.</li>
 <li>With 100% cotton core wicks and exquisite fine fragrance oils and essential oils, each candle offers an unparalleled sensory journey. Plus, our reusable tin conterner add extra value to your investment in luxury ambiance</li>
</ul>
<br>
  <h1 style="font-size: 25px;"><b>Rituals</b></h1>
 <ul style="font-size: 19px;">
 <li>Create a sense of balance and peace by lighting the Divine Harmony candle in a quiet, sacred space.</li>
 <li>Take a moment to inhale deeply, allowing the harmonious blend of vanilla and amber to calm your mind and soothe your spirit.</li>
 <li>Find a comfortable seated position and close your eyes, focusing on your breath as it flows in and out of your body.</li>
 <li>With each inhale, imagine yourself drawing in harmony and balance, and with each exhale, releasing any tension or discord.</li>
 <li>Spend a few moments in silent meditation, allowing the gentle energy of the candle to restore your inner equilibrium.</li>
 <li>Reflect on areas of your life where you may be out of balance and consider small steps you can take to restore harmony.</li>
 <li>When you feel ready, open your eyes and carry this sense of peace and balance with you throughout your day, knowing that you are grounded in the divine harmony of the universe.</li>
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
