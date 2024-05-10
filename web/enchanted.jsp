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
        <title>Enchanted Forest</title>
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
	<img class="pop-icon" id="pop-icon" src="images/IMG-20240320-WA0151 (1) (1).png" alt="Icon" style="float:left; margin-right:10px;"  height="300px">
    <h1 style="font-size: 65px;filter: drop-shadow(8px 10px 7px rgb(0 0 0 / 0.4));"><b>Enchanted Forest....</b></h1>
	<br>
	<p style="font-size: 25px;">A earthy blend of <b>lime and coconut</b>, evoking the serene beauty of a forest setting and instilling a sense of groundedness and <b>connection to nature</b>.</p>
	<h1 style="font-size: 35px;"><b>LKR 1139.00</b></h1><form action="CartServlet" method="post">
        <button type="submit" class="button" name="enchanted_count_+">ADD TO CART</button></form>
        <br>
        <br>
	<h1 style="font-size: 35px;"><span class="topic"><b>Description</b></span>
	  <hr class="line"></h1>
<br>
  <h1 style="font-size: 25px;"><b>Highlights</b></h1>
 <ul style="font-size: 19px;">
 <li>Earthy blend of lime and coconut essential oils</li>
 <li>Evokes the serene beauty of a forest setting</li>
 <li>Instills a sense of groundedness and connection to nature</li>
 <li>Features a cotton wick for an immersive experience</li>
 <li>Packaged in a classic tin container to complement any decor</li>
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
 <li>Set the stage for a journey into nature by lighting the Enchanted Forest candle in a quiet space surrounded by plants or natural elements.</li>
 <li>Close your eyes and take a few deep breaths, allowing the earthy blend of lime and coconut to transport you to a serene forest setting.</li>
 <li>Visualize yourself walking through a lush forest, feeling the soft earth beneath your feet and the gentle rustle of leaves overhead.</li>
 <li>Take a moment to connect with the natural world around you, feeling grounded and rooted in the present moment.</li>
 <li>Spend time journaling or sketching your thoughts and feelings, allowing the creative energy of the forest to inspire you.</li>
 <li>As you bask in the enchanting atmosphere of the candle, reflect on the beauty and abundance of nature, and express gratitude for the world around you.</li>
 <li>Carry this sense of connection and groundedness with you as you go about your day, knowing that you are always connected to the earth and its infinite wisdom.</li>
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
