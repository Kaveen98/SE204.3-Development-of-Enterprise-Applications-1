/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cart;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ASUS
 */
public class CheckOut extends HttpServlet {

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
            out.println("<title>Servlet CheckOut</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckOut at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
        
                    HttpSession session = request.getSession();
                    Integer TranquilCount = (Integer) session.getAttribute("TranquilCount");
                    Integer RomanticCount = (Integer) session.getAttribute("RomanticCount");
                    Integer SoothingCount = (Integer) session.getAttribute("SoothingCount");
                    Integer EuphoricCount = (Integer) session.getAttribute("EuphoricCount");
                    Integer EnchantedCount = (Integer) session.getAttribute("EnchantedCount");
                    Integer MoonlightCount = (Integer) session.getAttribute("MoonlightCount");
                    Integer DivineCount = (Integer) session.getAttribute("DivineCount");
                    String user_id = (String) session.getAttribute("user_id");
                    
                    Integer Total = (TranquilCount +RomanticCount + SoothingCount + EuphoricCount + EnchantedCount + MoonlightCount + DivineCount)*1139;

                    Order order = new Order();
                    response.sendRedirect("https://www.whatsapp.com/catalog/94760733387/?app_absent=0");
            try {
                order.addOrder(user_id,TranquilCount,RomanticCount,SoothingCount,EuphoricCount,EnchantedCount,
                        MoonlightCount,DivineCount,Total);
            } catch (SQLException ex) {
                Logger.getLogger(CheckOut.class.getName()).log(Level.SEVERE, null, ex);
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
