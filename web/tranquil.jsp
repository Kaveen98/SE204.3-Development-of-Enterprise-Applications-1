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
        <title>Tranquil Oasis</title>
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
	<img class="pop-icon" id="pop-icon" src="images/IMG-20240320-WA0217.png" alt="Icon" style="float:left; margin-right:10px;"  height="300px">
    <h1 style="font-size: 65px;filter: drop-shadow(8px 10px 7px rgb(0 0 0 / 0.4));"><b>Tranquil Oasis....</b></h1>
	<br>
	<p style="font-size: 25px;">A calming blend of <b>lavender and chamomile</b> essential oils, perfect for unwinding after a hectic day and promoting <b>relaxation and tranquillity</b>.</p>
        <h1 style="font-size: 35px;"><b>LKR 1139.00</b></h1><form action="TranquilCountAddServlet" method="post">
        <button type="submit" class="button">ADD TO CART</button></form>
        <br>
        <br>
	<h1 style="font-size: 35px;"><span class="topic"><b>Description</b></span>
	  <hr class="line"></h1>
<br>
  <h1 style="font-size: 25px;"><b>Highlights</b></h1>
 <ul style="font-size: 19px;">
 <li>Calming blend of lavender and chamomile essential oils</li>
 <li>Promotes relaxation and tranquility</li>
 <li>Perfect for unwinding after a hectic day</li>
 <li>Handcrafted with high-quality wax</li>
 <li>Long-lasting fragrance for 16 hours of enjoyment</li>
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
 <li>Find a quiet space where you won't be disturbed.</li>
 <li>Light the Tranquil Oasis candle and take a few deep breaths, inhaling the soothing scent of lavender and chamomile.</li>
 <li>Sit comfortably and close your eyes, focusing on releasing any tension in your body with each exhale.</li>
 <li>Visualize yourself in a peaceful oasis, surrounded by calming waters and gentle breezes.</li>
 <li>Allow the tranquil energy of the candle to wash over you, melting away stress and promoting deep relaxation.</li>
 <li>Spend a few minutes in quiet reflection, embracing the tranquillity of the moment.</li>
 <li>When you feel ready, slowly open your eyes and carry the sense of calm with you throughout your day.</li>
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
