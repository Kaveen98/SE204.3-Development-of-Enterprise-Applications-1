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
        <title>All Products</title>
        <link href="css/bootstrap-4.4.1.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet">
        <link href="images/favicon.ico" rel="shortcut icon">
    </head>

<body>
    
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
  <h1 class="pop-icon"  align="center">“ELEVATE YOUR <b>SPACE</b>, ENHANCE YOUR <b>MOOD</b>, AND EMBRACE <b>PURE BLISS...</b>”</h1>
  <p>&nbsp;</p>
  <br>
  <h1 style="font-size: 30px;"><span class="topic">All Products</span>
    <hr class="line"></h1>
  <br>
        <div class="container">
		<div class="row">
			<div class="col-md-3 my-3">
                            <div class="card w-100"> <a href="tranquil.jsp">
					<img class="card-img-top" src="images/IMG-20240320-WA0217.png"
                                         alt="Card image cap"></a>
					<div class="card-body">
                                                <h5 class="card-title"><B>Tranquil Oasis</B></h5>
                                                <h6 class="price">LKR.1139.00</h6><br>
						<h6 class="category">
                                                    Calming blend of lavender and chamomile essential oils.<br><br>
                                                    Offers relief from tension and promotes calmness.<br><br>
                                                        Ideal for enhancing clarity and focus during meditation.<br><br>
                                                        Features a unique cotton wick for a cozy ambiance.<br><br>
                                                        Hand-poured in a tin for a stylish look.<br>
                                                </h6>
						<div class="mt-3 d-flex justify-content-between">
						<a class="btn btn-dark" href="tranquil.jsp">More Details</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3 my-3">
                            <div class="card w-100"><a href="romantic.jsp">
					<img class="card-img-top" src="images/IMG-20240320-WA0153(1).png"
						alt="Card image cap"></a>
					<div class="card-body">
                                                <h5 class="card-title"><B>Romantic Glow</B></h5>
                                                <h6 class="price">LKR.1139.00</h6><br>
						<h6 class="category">
                                                    Enchanting blend of rose petals, jasmine, and vanilla.<br><br>
                                                    Evokes the timeless allure of love and passion.<br><br>
                                                    Creates a romantic atmosphere for special occasions.<br><br>
                                                    Made with premium paraffin wax for a clean burnt.<br><br>
                                                    Elegant tin container adds a touch of luxury.<br>
                                                </h6>
						<div class="mt-3 d-flex justify-content-between">
						<a class="btn btn-dark" href="romantic.jsp">More Details</a>
						</div>
					</div>
				</div>
			</div>
                        <div class="col-md-3 my-3">
                            <div class="card w-100"><a href="soothing.jsp">
					<img class="card-img-top" src="images/IMG-20240320-WA0219(1) (1).png"
						alt="Card image cap"></a>
					<div class="card-body">
                                                <h5 class="card-title"><B>Soothing Serenity</B></h5>
                                                <h6 class="price">LKR.1139.00</h6><br>
						<h6 class="category">
                                                        Delicate blend of eucalyptus and mint essential oils.<br><br>
                                                        Offers relief from tension and promotes calmness.<br><br>
                                                        Ideal for enhancing clarity and focus during meditation.<br><br>
                                                        Features a unique cotton wick for a cozy ambiance.<br><br>
                                                        Hand-poured in a tin for a stylish look.<br><br>
                                                </h6>
						<div class="mt-3 d-flex justify-content-between">
						<a class="btn btn-dark" href="soothing.jsp">More Details</a>
						</div>
					</div>
				</div>
			</div>
                        <div class="col-md-3 my-3">
                            <div class="card w-100"><a href="euphoric.jsp">
					<img class="card-img-top" src="images/IMG-20240320-WA0165.png"
						alt="Card image cap"></a>
					<div class="card-body">
                                                <h5 class="card-title"><B>Euphoric Bliss</B></h5>
                                                <h6 class="price">LKR.1139.00</h6><br>
						<h6 class="category">
                                                        Uplifting combination of citrus and floral scents.<br><br>
                                                        Designed to uplift spirits and infuse positivity.<br><br>
                                                        Energizing fragrance to boost mood and motivation.<br><br>
                                                        Crafted with pure wax for a natural and clean burn.<br><br>
                                                        Comes in a charming tin container, perfect for gifting.<br><br><br>
                                                </h6>
						<div class="mt-3 d-flex justify-content-between">
						<a class="btn btn-dark" href="euphoric.jsp">More Details</a>
						</div>
					</div>
				</div>
			</div>
		</div>
            
            <br>
                        
                <div class="row">
			<div class="col-md-3 my-3">
                            <div class="card w-100"> <a href="enchanted.jsp">
					<img class="card-img-top" src="images/IMG-20240320-WA0151 (1) (1).png"
                                         alt="Card image cap"></a>
					<div class="card-body">
                                                <h5 class="card-title"><B>Enchanted Forest</B></h5>
                                                <h6 class="price">LKR.1139.00</h6><br>
						<h6 class="category">
                                                    Earthy blend of lime and coconut essential oils.<br><br>
                                                    Evokes the serene beauty of a forest setting.<br><br>
                                                    Instills a sense of groundedness and connection to nature.<br><br>
                                                    Features a cotton wick for an immersive experience.<br><br>
                                                    Packaged in a classic tin container to complement any decor.<br>
                                                </h6>
						<div class="mt-3 d-flex justify-content-between">
						<a class="btn btn-dark" href="enchanted.jsp">More Details</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3 my-3">
                            <div class="card w-100"><a href="moonlight.jsp">
					<img class="card-img-top" src="images/IMG-20240320-WA0183.png"
						alt="Card image cap"></a>
					<div class="card-body">
                                                <h5 class="card-title"><B>Mystical Moonlight</B></h5>
                                                <h6 class="price">LKR.1139.00</h6><br>
						<h6 class="category">
                                                    Mysterious blend of jasmine and sandalwood fragrances.<br><br>
                                                    Inspired by the magic of moonlight nights.<br><br>
                                                    Provides a soothing ambiance for relaxation and reflection.<br><br>
                                                    Presented in a chic tin container for a touch of enchantment.<br><br><br><br>
                                                </h6>
						<div class="mt-3 d-flex justify-content-between">
						<a class="btn btn-dark" href="moonlight.jsp">More Details</a>
						</div>
					</div>
				</div>
			</div>
                        <div class="col-md-3 my-3">
                            <div class="card w-100"><a href="divine.jsp">
					<img class="card-img-top" src="images/IMG-20240320-WA0145 (1).png"
						alt="Card image cap"></a>
					<div class="card-body">
                                                <h5 class="card-title"><B>Divine Harmony</B></h5>
                                                <h6 class="price">LKR.1139.00</h6><br>
						<h6 class="category">
                                                        Harmonious blend of vanilla and amber fragrances.<br><br>
                                                        Creates a warm and inviting atmosphere.<br><br>
                                                        Promotes a sense of balance and inner peace.<br><br>
                                                        Made with premium soy wax for a clean and even burn.<br><br>
                                                        Housed in an elegant glass jar to elevate any space.<br><br>
                                                </h6>
						<div class="mt-3 d-flex justify-content-between">
						<a class="btn btn-dark" href="divine.jsp">More Details</a>
						</div>
					</div>
				</div>
			</div>
            
	</div>
  <br>
  <br>
  <br>
  <br>

  <br>
  <br>
  <br>

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
