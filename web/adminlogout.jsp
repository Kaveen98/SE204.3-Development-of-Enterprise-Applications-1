
<%@page import="java.util.List"%>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
                <% 
                    session = request.getSession();
                    String admin_id = (String) session.getAttribute("admin_id");
                 %>
<% 
            if(request.getSession().getAttribute("admin_id") != null){
                request.getSession().removeAttribute("admin_id");
                response.sendRedirect("adminlogin.jsp");
            } else{
                response.sendRedirect("adminlogin.jsp");
            }
%>
</html>