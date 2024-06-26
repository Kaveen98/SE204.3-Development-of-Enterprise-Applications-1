
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class AdminServlet extends HttpServlet {

   
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

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String admin_name = request.getParameter("admin_name");
        String admin_password = request.getParameter("admin_password");
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/arcana_candles";
        String query = "SELECT * FROM admin_data WHERE admin_name=? AND admin_password=?";
        
        try {
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url,"root","");
            
            PreparedStatement statement = con.prepareStatement(query);
            statement.setString(1, admin_name);
            statement.setString(2, admin_password);
            
            ResultSet result = statement.executeQuery();
            
            if (result.next()) {
            // Valid username and password
            HttpSession session = request.getSession();
            String admin_id = result.getString("admin_id"); // Get userid from result
            session.setAttribute("admin_id", admin_id );
            response.sendRedirect("adminDash.jsp");
            
        } else {
            // Invalid username or password
            response.sendRedirect("adminlogin.jsp");
        }
     
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AdminServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AdminServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
