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
        <title>Soothing Serenity</title>
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
	<img class="pop-icon" id="pop-icon" src="images/IMG-20240320-WA0219(1) (1).png" alt="Icon" style="float:left; margin-right:10px;"  height="300px">
    <h1 style="font-size: 65px;filter: drop-shadow(8px 10px 7px rgb(0 0 0 / 0.4));"><b>Soothing Serenity....</b></h1>
	<br>
	<p style="font-size: 25px;">A delicate blend of <b>eucalyptus and mint</b>, offering relief from tension and promoting a sense of <b>calm and clarity</b>.</p>
	<h1 style="font-size: 35px;"><b>LKR 1139.00</b></h1><form action="CartServlet" method="post">
        <button type="submit" class="button" name="soothing_count_+">ADD TO CART</button></form>
        <br><br><br>
	<h1 style="font-size: 35px;"><span class="topic"><b>Description</b></span>
	  <hr class="line"></h1>
<br>
  <h1 style="font-size: 25px;"><b>Highlights</b></h1>
 <ul style="font-size: 19px;">
 <li>Delicate blend of eucalyptus and mint essential oils</li>
 <li>Offers relief from tension and promotes calmness</li>
 <li>Ideal for enhancing clarity and focus during meditation</li>
 <li>Features a unique cotton wick for a cozy ambiance</li>
 <li>Hand-poured in a tin for a stylish look</li>
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
 <li>Create a calming atmosphere by dimming the lights and lighting the Soothing Serenity candle.</li>
 <li>Inhale deeply, allowing the refreshing blend of eucalyptus and mint to clear your mind and ease tension.</li>
 <li>Find a comfortable seated position and close your eyes, focusing on your breath as it flows in and out of your body.</li>
 <li>With each inhale, imagine yourself breathing in serenity and clarity, and with each exhale, releasing any stress or worry.</li>
 <li>Spend a few moments practicing gentle stretches or yoga poses to further relax your body and mind.</li>
 <li>Allow the soothing energy of the candle to envelop you, bringing a sense of peace and tranquillity.</li>
 <li>When you feel ready, open your eyes and carry this feeling of serenity with you into the rest of your day.</li>
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
