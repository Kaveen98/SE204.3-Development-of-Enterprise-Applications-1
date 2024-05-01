
<%@page import="java.util.List"%>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<% 
            if(request.getSession().getAttribute("userid") != null){
                request.getSession().removeAttribute("userid");
                response.sendRedirect("login.jsp");
            } else{
                response.sendRedirect("index.jsp");
            }
%>
</html>