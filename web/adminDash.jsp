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
        <title>Admin Dashboard</title>
        <link href="css/bootstrap-4.4.1.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet">
        <link href="images/favicon.ico" rel="shortcut icon">
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
                    String admin_id = (String) session.getAttribute("admin_id");
                 %>
<div class="container-fluid">
<div class="container">
    <%@include file ="includes/adminNavbar.jsp" %>
    
  <br>
 
    <p>&nbsp;</p>
  <br>
  
 
  <h1 style="font-size: 30px;"><span class="topic">Admin Dashboard</span>
    <hr class="line"></h1>
  <br><br>
        <div class="container">
            <center>
                <table border="0" cellspacing="25" cellpadding="25">
                    <tbody>
                        <tr>
                            <td><form action="ViewUserServlet" method="GET"><input type="submit" value="View All Users" /></form>
                                <br><br><br><br><br>
                                <form action="ViewOrdersServlet" method="GET"><input type="submit" value="View All Orders" /></form>
                            </td>
                            <td></td><td></td><td></td><td></td>
                            <td><img src="images/Brown And Gold Vibrant Happy Diwali Facebook Post (1).png" width="470" height="333"/>
                            </td>
                        </tr> 
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
