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
        <title>Shopping Cart</title>
        <link href="css/bootstrap-4.4.1.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet">
        <link href="images/favicon.ico" rel="shortcut icon">
    </head>

<body>
    
<div class="container-fluid" >
<div class="container" style="width: 120%;">
    <%@include file ="includes/navbar.jsp" %>
    
  <br>
 
    <p>&nbsp;</p>
  <br>
  
 
  <h1 style="font-size: 30px;"><span class="topic">Your Shopping Cart</span>
    <hr class="line"></h1>
  <br>
        <div class="container">
            <center>
                <% 
                    session = request.getSession();
                    Integer TranquilCount = (Integer) session.getAttribute("TranquilCount");
                    Integer RomanticCount = (Integer) session.getAttribute("RomanticCount");
                    Integer SoothingCount = (Integer) session.getAttribute("SoothingCount");
                    Integer EuphoricCount = (Integer) session.getAttribute("EuphoricCount");
                    Integer EnchantedCount = (Integer) session.getAttribute("EnchantedCount");
                    Integer MoonlightCount = (Integer) session.getAttribute("MoonlightCount");
                    Integer DivineCount = (Integer) session.getAttribute("DivineCount");
                    %>
                    <%! Integer Total = null; %>
            <table border="1">
                <thead>
                    <tr>
                        <th> Product Name </th>
                        <th> Price </th>
                        <th> &nbsp;Quantity&nbsp;&nbsp;</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Tranquil Oasis</td>
                        <td>LKR.1139.00</td>
                        <td>
                            <%
                                if (TranquilCount == null) {
                                    TranquilCount = 0;
                                }
                            %>
                            <h6><%= TranquilCount %></h6>
                        </td>
                        <td><form name="tranquil_count+" action="TranquilCountAddServlet" method="POST">
                                <input type="submit" value="Add" name="tranquil_count_+" style="border:1px solid black;
                                       background-color: transparent; color: black"/>
                            </form>
                        </td>
                        <td>
                            <form name="tranquil_count-" action="TranquilCountRemoveServlet" method="POST">
                                <input type="submit" value="Remove" name="tranquil_count_-"style="border:1px solid black;
                                       background-color: transparent; color: black"/>
                            </form>
                        </td>
                    </tr>
                    <tr>
                        <td>Romantic Glow</td>
                        <td>LKR.1139.00</td>
                        <td>
                            <%
                                if (RomanticCount == null) {
                                    RomanticCount = 0;
                                }
                            %>
                            <h6><%= RomanticCount %></h6>
                        </td>
                        <td><form name="romantic_count+" action="RomanticCountAdd" method="POST">
                                <input type="submit" value="Add" name="romantic_count_+" style="border:1px solid black;
                                       background-color: transparent; color: black"/>
                            </form>
                        </td>
                        <td>
                            <form name="romantic_count-" action="RomanticCountRemove" method="POST">
                                <input type="submit" value="Remove" name="romantic_count_-"style="border:1px solid black;
                                       background-color: transparent; color: black"/>
                            </form>
                        </td>
                    </tr>
                    <tr>
                        <td>Soothing Serenity</td>
                        <td>LKR.1139.00</td>
                        <td>
                            <%
                                if (SoothingCount == null) {
                                    SoothingCount = 0;
                                }
                            %>
                            <h6><%= SoothingCount %></h6>
                        </td>
                        <td><form name="soothing_count+" action="SoothingCountAddServlet" method="POST">
                                <input type="submit" value="Add" name="soothing_count_+" style="border:1px solid black;
                                       background-color: transparent; color: black"/>
                            </form>
                        </td>
                        <td>
                            <form name="soothing_count-" action="SoothingCountRemoveServlet" method="POST">
                                <input type="submit" value="Remove" name="soothing_count_-"style="border:1px solid black;
                                       background-color: transparent; color: black"/>
                            </form>
                        </td>
                    </tr>
                    <tr>
                        <td>Euphoric Bliss</td>
                        <td>LKR.1139.00</td>
                        <td>
                            <%
                                if (EuphoricCount == null) {
                                    EuphoricCount = 0;
                                }
                            %>
                            <h6><%= EuphoricCount %></h6>
                        </td>
                        <td><form name="euphoric_count+" action="EuphoricCountAdd" method="POST">
                                <input type="submit" value="Add" name="euphoric_count_+" style="border:1px solid black;
                                       background-color: transparent; color: black"/>
                            </form>
                        </td>
                        <td>
                            <form name="euphoric_count-" action="EuphoricCountRemove" method="POST">
                                <input type="submit" value="Remove" name="euphoric_count_-"style="border:1px solid black;
                                       background-color: transparent; color: black"/>
                            </form>
                        </td>
                    </tr>
                    <tr>
                        <td>Enchanted Forest</td>
                        <td>LKR.1139.00</td>
                        <td>
                            <%
                                if (EnchantedCount == null) {
                                    EnchantedCount = 0;
                                }
                            %>
                            <h6><%= EnchantedCount %></h6>
                        </td>
                        <td><form name="enchanted_count+" action="EnchantedCountAddServlet" method="POST">
                                <input type="submit" value="Add" name="enchanted_count_+" style="border:1px solid black;
                                       background-color: transparent; color: black"/>
                            </form>
                        </td>
                        <td>
                            <form name="enchanted_count-" action="EnchantedCountRemoveServlet" method="POST">
                                <input type="submit" value="Remove" name="enchanted_count_-"style="border:1px solid black;
                                       background-color: transparent; color: black"/>
                            </form>
                        </td>
                    </tr>
                    <tr>
                        <td>Mystical Moonlight</td>
                        <td>LKR.1139.00</td>
                        <td>
                            <%
                                if (MoonlightCount == null) {
                                    MoonlightCount = 0;
                                }
                            %>
                            <h6><%= MoonlightCount %></h6>
                        </td>
                        <td><form name="moonlight_count+" action="MoonlightCountAdd" method="POST">
                                <input type="submit" value="Add" name="moonlight_count_+" style="border:1px solid black;
                                       background-color: transparent; color: black"/>
                            </form>
                        </td>
                        <td>
                            <form name="moonlight_count-" action="MoonlightCountRemove" method="POST">
                                <input type="submit" value="Remove" name="moonlight_count_-"style="border:1px solid black;
                                       background-color: transparent; color: black"/>
                            </form>
                        </td>
                    </tr>
                    <tr>
                        <td>Divine Harmony</td>
                        <td>LKR.1139.00</td>
                        <td>
                            <%
                                if (DivineCount == null) {
                                    DivineCount = 0;
                                }
                            %>
                            <h6><%= DivineCount %></h6>
                        </td>
                        <td><form name="divine_count+" action="DivineCountAdd" method="POST">
                                <input type="submit" value="Add" name="divine_count_+" style="border:1px solid black;
                                       background-color: transparent; color: black"/>
                            </form>
                        </td>
                        <td>
                            <form name="divine_count-" action="DivineCountRemove" method="POST">
                                <input type="submit" value="Remove" name="divine_count_-"style="border:1px solid black;
                                       background-color: transparent; color: black"/>
                            </form>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <form name="checkout" action="CheckOut" method="POST">
                                <input type="submit" value="Check-Out" name="checkoutsub"/>
                            </form>
                        </td>
                        <td></td>
                        <td><B>Total: </B></td> 
                        <td>
                            LKR.<% Total = (TranquilCount +RomanticCount + SoothingCount + EuphoricCount + EnchantedCount 
                                    + MoonlightCount + DivineCount)*1139; %><B><%= Total %>/=</B>
                        </td>
                        
                    </tr>
                </tbody>
            </table>
        </center>
                
			
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
