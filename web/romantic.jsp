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
        <title>Romantic glow</title>
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
	<img class="pop-icon" id="pop-icon" src="images/IMG-20240320-WA0153(1).png" alt="Icon" style="float:left; margin-right:10px;"  height="300px">
    <h1 style="font-size: 65px;filter: drop-shadow(8px 10px 7px rgb(0 0 0 / 0.4));"><b>Romantic Glow....</b></h1>
	<br>
	<p style="font-size: 25px;">Enchanting blend of <b>rose petals, jasmine, and vanilla</b> evokes the timeless allure of <b>love and passion</b>.</p>
	<h1 style="font-size: 35px;"><b>LKR 1139.00</b></h1><form action="CartServlet" method="post">
        <button type="submit" class="button" name="romantic_count_+">ADD TO CART</button></form>
        <br><br><br>
	<h1 style="font-size: 35px;"><span class="topic"><b>Description</b></span>
	  <hr class="line"></h1>
<br>
  <h1 style="font-size: 25px;"><b>Highlights</b></h1>
 <ul style="font-size: 19px;">
 <li>Enchanting blend of rose petals, jasmine, and vanilla</li>
 <li>Evokes the timeless allure of love and passion</li>
 <li>Creates a romantic atmosphere for special occasions</li>
 <li>Made with premium paraffin wax for a clean burnt</li>
 <li>Elegant tin container adds a touch of luxury</li>
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
 <li>Set the scene for a romantic evening by dimming the lights and lighting the Romantic Glow candle.</li>
 <li>Take a moment to appreciate the enchanting blend of rose petals, jasmine, and vanilla filling the air.</li>
 <li>Invite your partner to join you in a cozy space illuminated by the candle's warm glow.</li>
 <li>Share stories, dreams, and laughter while basking in the ambiance of love and passion.</li>
 <li>Take turns massaging each other with scented oils or simply enjoy each other's company in silence.</li>
 <li>Let the romantic energy of the candle deepen your connection and ignite the spark of intimacy.</li>
 <li>As the evening comes to a close, express gratitude for the love and joy you share together.</li>
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
