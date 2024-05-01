<%@page import="java.util.List"%>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home</title>
        <link href="css/bootstrap-4.4.1.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet">
        <link rel="shortcut icon" href="images/favicon.ico"/>
        <style>
    table {
        border-collapse: collapse;
    }
    th, td {
        border: 1px solid black;
        padding: 10px;
        text-align: center;
    }
    .row70 {
        height: 300px;
    }
    .col1{
        width: 300px;
    }
    .col2{
        width: 200px;
    }
</style>
    </head>
    
    <body>
        
<div class="container-fluid" >
<div class="container" style="width: 120%;">
    <%@include file ="includes/navbar.jsp" %>
    
	<br>
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

        <%@include file="includes/feedbackAccordion.jsp" %>
	<br>
	<br>
        <%@include file="includes/footer.jsp" %>
     
</div>
</div>
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap-4.4.1.js"></script>
<script src="js/script2.js"></script>

    </body>
</html>