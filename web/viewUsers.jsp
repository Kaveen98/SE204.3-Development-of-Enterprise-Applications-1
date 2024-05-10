<%@page import="model.User"%>
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
                    List<User> users = (List<User>) request.getAttribute("users");
                    Iterator<User> iterator = users.iterator();
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
                                    <th>Username</th>
                                    <th>Contact No.</th>
                                    <th>Address</th>
                                    <th>Email</th>
                                    <th>Password</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% while (iterator.hasNext()) {
                                    User user = iterator.next();
                                %>
                                    <tr>
                                        <td><%= user.getUserid() %></td>
                                        <td><%= user.getUsername() %></td>
                                        <td><%= user.getContactno() %></td>
                                        <td><%= user.getAddress() %></td>
                                        <td><%= user.getEmail() %></td>
                                        <td><%= user.getPassword() %></td>
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
