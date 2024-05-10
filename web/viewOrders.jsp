<%@page import="model.Order"%>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="javax.servlet.http.HttpSession" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Users</title>
        <link href="css/bootstrap-4.4.1.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet">
        <link href="images/favicon.ico" rel="shortcut icon">
    </head>

<body>
                <% 
                    List<Order> orders = (List<Order>) request.getAttribute("orders");
                    Iterator<Order> iterator = orders.iterator();
                %>
                 
<div class="container-fluid">
<div class="container">
    <%@include file ="includes/adminNavbar.jsp" %>
   
  <br>
 
    <p>&nbsp;</p>
  <br>
  
 
  <h1 style="font-size: 30px;"><span class="topic">All Users</span>
    <hr class="line"></h1>
  <br><br>
            <center>
                        <table border="1">
                            <thead>
                                <tr>
                                    <th>User ID</th>
                                    <th>Tranquil Oasis</th>
                                    <th>Romantic Glow</th>
                                    <th>Soothing Serenity</th>
                                    <th>Euphoric Bliss</th>
                                    <th>Enchanted Forest</th>
                                    <th>Mystical Moonlight</th>
                                    <th>Divine Harmony</th>
                                    <th>&nbsp;&nbsp;Total&nbsp;&nbsp;&nbsp;</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    orders = Order.getOrders();
                                    for (Order order : orders) {
                                %>
                                <tr>
                                    <td><%= order.getUserid() %></td>
                                    <td><%= order.getTranquilCount() %></td>
                                    <td><%= order.getRomanticCount() %></td>
                                    <td><%= order.getSoothingCount() %></td>
                                    <td><%= order.getEuphoricCount() %></td>
                                    <td><%= order.getEnchantedCount() %></td>
                                    <td><%= order.getMoonlightCount() %></td>
                                    <td><%= order.getDivineCount() %></td>
                                    <td>LKR.<%= order.getTotal() %>/=</td>
                                </tr>
                                <% } %>
                            </tbody>
                        </table>
                            
            </center>
 
                        <button class="button" onclick="location.href='adminDash.jsp';">Back to Dashboard</button>
  <br>
  <br>
  <br>
  <br>
  
  <%@include file="includes/footer.jsp" %>
  <br>  
 </div></div>
  
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap-4.4.1.js"></script>
<script src="js/script2.js"></script>

</body>

</html>
