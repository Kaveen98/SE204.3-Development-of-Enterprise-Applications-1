/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin;

import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
public class AdminServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AdminServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        
        PrintWriter out = response.getWriter();
        
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        
        try {
            // Establishing connection to the database
            conn = DriverManager.getConnection("jdbc:mysql://localhost/", "root", "");
            
            // Checking if the connection is successful
            if (conn != null) {
                // Creating SQL query
                String sql = "SELECT * FROM cart";
                
                // Creating a Statement object to execute the query
                stmt = conn.createStatement();
                
                // Executing the query
                rs = stmt.executeQuery(sql);
                
                // Displaying results
                out.println("<html><head><title>Orders</title></head><body>");
                out.println("<center>");
                out.println("<table border=\"0\">");
                out.println("<tr>");
                out.println("<th width=\"10\">Order_ID</th>");
                out.println("<th width=\"10\">User_ID</th>");
                out.println("<th width=\"10\">Product_ID</th>");
                out.println("<th width=\"10\">Quantity</th>");
                out.println("<th width=\"10\">Quantity</th>");
                out.println("</tr>");
                
                // Iterating through the result set and printing data
                while (rs.next()) {
                    out.println("<tr>");
                    out.println("<td>" + rs.getString("order_id") + "</td>");
                    out.println("<td>" + rs.getString("user_id") + "</td>");
                    out.println("<td>" + rs.getString("product_id") + "</td>");
                    out.println("<td>" + rs.getString("quantity") + "</td>");
                    out.println("<td>" + rs.getString("amount") + "</td>");
                    out.println("</tr>");
                }
                
                out.println("</table>");
                out.println("</center>");
                out.println("</body></html>");
            } else {
                out.println("Failed to make connection!");
            }
        } catch (SQLException e) {
        } finally {
            // Closing resources
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
            }
        }
    }
}

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
