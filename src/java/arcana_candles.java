
import java.sql.*;
import com.mysql.jdbc.Connection;
import com.sun.tools.xjc.reader.xmlschema.bindinfo.BIConversion.Static;
import java.io.PrintWriter;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ASUS
 */
public class arcana_candles {
    
    public static void main(String[] args) {
        
        String driver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/arcana_candles?zeroDateTimeBehavior=convertToNull";
        
        
        PrintWriter out = response.getWriter();

        try {
            // Load the JDBC driver
            Class.forName(driver);

            // Establish the connection
            Connection con = DriverManager.getConnection(url, "root", "");

            // Create a prepared statement
            st = con.createStatement("SELECT * FROM admin_data");

            // Execute the query
            ResultSet result = st.executeQuery();

            out.println("<center>");
            out.println("<table border=\"0\">");
            out.println("<tr>");
            out.println("<th width=\"100\">Guest_ID</th>");
            out.println("<th width=\"100\">First Name</th>");
            out.println("<th width=\"100\">Last Name</th>");
            out.println("<th width=\"100\">Address</th>");
            out.println("</tr>");

            if (result.next()) {
                do {
                    out.println("<tr>");
                    out.println("<td>" + result.getString("room_type") + "</td>");
                    out.println("<td>" + result.getString("room_id") + "</td>");
                    out.println("<td>" + result.getString("guest_id") + "</td>");
                    out.println("<td>" + result.getString("first_name") + "</td>");
                    out.println("<td>" + result.getString("last_name") + "</td>");
                    out.println("<td>" + result.getString("address") + "</td>");
                    out.println("</tr>");
                } while (result.next());
            } else {
                out.println("<br> no data ");
            }

            out.println("</table>");
            out.println("</center>");

            // Close the resources
            result.close();
            st.close();
            con.close();
        } catch (ClassNotFoundException e) {
            out.println("Error loading JDBC driver: " + e.getMessage());
        } catch (SQLException e) {
            out.println("Error executing query: " + e.getMessage());
        }
    }
}
        

