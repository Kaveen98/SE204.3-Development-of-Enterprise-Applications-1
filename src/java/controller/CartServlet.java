/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ASUS
 */
public class CartServlet extends HttpServlet {

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
            out.println("<title>Servlet CartServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartServlet at " + request.getContextPath() + "</h1>");
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

        
        if (TranquilCount == null) {
            TranquilCount = 0;
        }
        
        if (RomanticCount == null) {
            RomanticCount = 0;
        }
        
        if (SoothingCount == null) {
            SoothingCount = 0;
        }
        
        if (EuphoricCount == null) {
            EuphoricCount = 0;
        }
        
        if (EnchantedCount == null) {
            EnchantedCount = 0;
        }
        
        if (MoonlightCount == null) {
            MoonlightCount = 0;
        }
        
        if (DivineCount == null) {
            DivineCount = 0;
        }
        
        
    
                                                /** TranquilCount */    
                                                
        if (request.getParameter("tranquil_count_+") != null){
            TranquilCount++;
            session.setAttribute("TranquilCount", TranquilCount);
            response.sendRedirect("Cart.jsp");  
        } else if (request.getParameter("tranquil_count_-") != null && TranquilCount>0 ){
            TranquilCount--;
            session.setAttribute("TranquilCount", TranquilCount);
            response.sendRedirect("Cart.jsp");
        } else if(request.getParameter("tranquil_count_-") != null && TranquilCount<=0 ){
            response.sendRedirect("Cart.jsp"); 
        }
        
        
        
                                                /** RomanticCount */

        
        else if (request.getParameter("romantic_count_+") != null){
            RomanticCount++;
            session.setAttribute("RomanticCount", RomanticCount);
            response.sendRedirect("Cart.jsp");  
        } else if (request.getParameter("romantic_count_-") != null && RomanticCount>0 ){
            RomanticCount--;
            session.setAttribute("RomanticCount", RomanticCount);
            response.sendRedirect("Cart.jsp");
        } else if(request.getParameter("romantic_count_-") != null && RomanticCount<=0 ){
            response.sendRedirect("Cart.jsp"); 
        }
        
        
        
                                                /** SoothingCount */    
                                                
        if (request.getParameter("soothing_count_+") != null){
            SoothingCount++;
            session.setAttribute("SoothingCount", SoothingCount);
            response.sendRedirect("Cart.jsp");  
        } else if (request.getParameter("soothing_count_-") != null && SoothingCount>0 ){
            SoothingCount--;
            session.setAttribute("SoothingCount", SoothingCount);
            response.sendRedirect("Cart.jsp");
        } else if(request.getParameter("soothing_count_-") != null && SoothingCount<=0 ){
            response.sendRedirect("Cart.jsp"); 
        }
        
        
        
                                                /** EuphoricCount */    
                                                
        if (request.getParameter("euphoric_count_+") != null){
            EuphoricCount++;
            session.setAttribute("EuphoricCount", EuphoricCount);
            response.sendRedirect("Cart.jsp");  
        } else if (request.getParameter("euphoric_count_-") != null && EuphoricCount>0 ){
            EuphoricCount--;
            session.setAttribute("EuphoricCount", EuphoricCount);
            response.sendRedirect("Cart.jsp");
        } else if(request.getParameter("euphoric_count_-") != null && EuphoricCount<=0 ){
            response.sendRedirect("Cart.jsp"); 
        }
        
        
        
                                                /** EnchantedCount */    
                                                
        if (request.getParameter("enchanted_count_+") != null){
            EnchantedCount++;
            session.setAttribute("EnchantedCount", EnchantedCount);
            response.sendRedirect("Cart.jsp");  
        } else if (request.getParameter("enchanted_count_-") != null && EnchantedCount>0 ){
            EnchantedCount--;
            session.setAttribute("EnchantedCount", EnchantedCount);
            response.sendRedirect("Cart.jsp");
        } else if(request.getParameter("enchanted_count_-") != null && EnchantedCount<=0 ){
            response.sendRedirect("Cart.jsp"); 
        }
        
        
        
                                                /** MoonlightCount */    
                                                
        if (request.getParameter("moonlight_count_+") != null){
            MoonlightCount++;
            session.setAttribute("MoonlightCount", MoonlightCount);
            response.sendRedirect("Cart.jsp");  
        } else if (request.getParameter("moonlight_count_-") != null && MoonlightCount>0 ){
            MoonlightCount--;
            session.setAttribute("MoonlightCount", MoonlightCount);
            response.sendRedirect("Cart.jsp");
        } else if(request.getParameter("moonlight_count_-") != null && MoonlightCount<=0 ){
            response.sendRedirect("Cart.jsp"); 
        }
        
        
        
                                                /** DivineCount */    
                                                
        if (request.getParameter("divine_count_+") != null){
            DivineCount++;
            session.setAttribute("DivineCount", DivineCount);
            response.sendRedirect("Cart.jsp");  
        } else if (request.getParameter("divine_count_-") != null && DivineCount>0 ){
            DivineCount--;
            session.setAttribute("DivineCount", DivineCount);
            response.sendRedirect("Cart.jsp");
        } else if(request.getParameter("divine_count_-") != null && DivineCount<=0 ){
            response.sendRedirect("Cart.jsp"); 
        }
        
        
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
