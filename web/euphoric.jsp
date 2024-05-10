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
        <title>Euphoric Bliss</title>
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
	<img class="pop-icon" id="pop-icon" src="images/IMG-20240320-WA0165.png" alt="Icon" style="float:left; margin-right:10px;"  height="300px">
    <h1 style="font-size: 65px;filter: drop-shadow(8px 10px 7px rgb(0 0 0 / 0.4));"><b>Euphoric Bliss....</b></h1>
	<br>
	<p style="font-size: 25px;">An uplifting combination of <b>citrus and floral</b> scents, designed to uplift your spirits and infuse your space with <b>positivity and joy</b>.</p>
	<h1 style="font-size: 35px;"><b>LKR 1139.00</b></h1><form action="CartServlet" method="post">
        <button type="submit" class="button" name="euphoric_count_+">ADD TO CART</button></form>
        <br><br><br>
	<h1 style="font-size: 35px;"><span class="topic"><b>Description</b></span>
	  <hr class="line"></h1>
<br>
  <h1 style="font-size: 25px;"><b>Highlights</b></h1>
 <ul style="font-size: 19px;">
 <li>Uplifting combination of citrus and floral scents</li>
 <li>Designed to uplift spirits and infuse positivity</li>
 <li>Energizing fragrance to boost mood and motivation</li>
 <li>Crafted with pure wax for a natural and clean burn</li>
 <li>Comes in a charming tin container, perfect for gifting</li>
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
 <li>Set the mood for a joyful experience by lighting the Euphoric Bliss candle in a space where you feel comfortable and free</li>
 <li>Take a few moments to inhale the uplifting scent of citrus and floral notes, allowing them to awaken your senses.</li>
 <li>Put on your favorite music and let yourself dance freely, allowing the joyful energy of the candle to infuse every movement.</li>
 <li>Write down three things you're grateful for and three things that bring you happiness, allowing the positive energy of gratitude to amplify the euphoric atmosphere.</li>
 <li>Spend time engaging in activities that bring you joy, whether it's painting, singing, or simply spending time with loved ones.</li>
 <li>As you bask in the euphoric energy of the candle, allow yourself to fully embrace the present moment and let go of any worries or stress.</li>
 <li>Carry this sense of joy and positivity with you throughout your day, knowing that you can always return to this feeling whenever you need a boost.</li>
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
