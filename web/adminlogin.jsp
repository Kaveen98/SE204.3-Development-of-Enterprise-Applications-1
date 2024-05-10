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
        <title>Admin Login</title>
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
  
 
  <h1 style="font-size: 30px;"><span class="topic">Admin Login</span>
    <hr class="line"></h1>
  <br><br>
        <div class="container">
            <center>
                <form name="adminlog" action="AdminServlet" method="POST">
                    <table border="1" cellspacing="1" cellpadding="1">
                        <tbody>
                            <tr>
                                <td>Username: </td>
                                <td><input type="text" name="admin_name" value="" /></td>
                            </tr>
                            <tr>
                                <td>Password:</td>
                                <td><input type="password" name="admin_password" value="" /></td>
                            </tr>
                            <tr>
                                <td><input type="submit" value="Login" /></td>
                                <td><input type="reset" value="Clear" /></td>
                            </tr>
                        </tbody>
                    </table>  
                </form>
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
