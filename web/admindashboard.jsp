<%@page import="java.util.List"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
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
        <title>Admin Dashboard</title>
        <link href="css/bootstrap-4.4.1.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet">
        <link href="images/favicon.ico" rel="shortcut icon">
    </head>

<body>
    
<div class="container-fluid">
<div class="container">
    <%@include file ="includes/navbar.jsp" %>
    
  <br>

    <p>&nbsp;</p>
 
  <br>
  <h1 style="font-size: 30px;"><span class="topic">Admin Dashboard</span>
    <hr class="line"></h1>
  <br>
        <div>
            <center>
            <table border="1" style="width:90%;">
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>User ID</th>
                        <th>Tranquil Oasis</th>
                        <th>Romantic Glow</th>
                        <th>Soothing Serenity</th>
                        <th>Euphoric Bliss</th>
                        <th>Enchanted Forest</th>
                        <th>Mystical Moonlight</th>
                        <th>Divine Harmony</th>
                        <th>Total &nbsp;&nbsp;&nbsp;</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        // Iterate over result set and display each order
                        ResultSet rs = (ResultSet) request.getAttribute("orders");
                            while (rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getString("user_id") %></td>
                        <td><%= rs.getInt("TranquilCount") %></td>
                        <td><%= rs.getInt("RomanticCount") %></td>
                        <td><%= rs.getInt("SoothingCount") %></td>
                        <td><%= rs.getInt("EuphoricCount") %></td>
                        <td><%= rs.getInt("EnchantedCount") %></td>
                        <td><%= rs.getInt("MoonlightCount") %></td>
                        <td><%= rs.getInt("DivineCount") %></td>
                        <td><%= rs.getInt("Total") %></td>
                    </tr>
                    <% 
                        }
                    %>
                </tbody>
            </table>
        </center>
                
			
  <br>
  <br>
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
