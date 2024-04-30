/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Client;

import java.sql.*;
import java.sql.DriverManager;
import com.mysql.jdbc.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS
 */
class Client {
    Statement st;

    void addClient(String username, String contactno, String address, String email, String password) throws SQLException {
         
        connectToDB();
        String query = "INSERT INTO user(username,contactno,address,email,password) VALUES('" + username + "','" + contactno + "','" + address + "','" + email + "','" + password + "')";
        
        try {
            st.executeUpdate(query);
        } catch (SQLException ex) {
            Logger.getLogger(Client.class.getName()).log(Level.SEVERE, null, ex);
        }  
        
        
    }

    
    
    
    private void connectToDB() throws SQLException {
        
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/arcana_candles";
        
        try {
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url,"root","");
            st = (Statement) con.createStatement();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Client.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
}
