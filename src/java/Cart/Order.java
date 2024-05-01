/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cart;

import com.mysql.jdbc.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS
 */
class Order {
    Statement st;

    void addOrder(String user_id, Integer TranquilCount, Integer RomanticCount, Integer SoothingCount, Integer EuphoricCount, Integer EnchantedCount, Integer MoonlightCount, Integer DivineCount, Integer Total) throws SQLException {
        
        connectToDB();
        String query = "INSERT INTO orders(user_id,tranquil,romantic,soothing,euphoric,enchanted,moonlight,divine,total) VALUES('" + user_id + "','" + TranquilCount + "','" + RomanticCount + "','" + SoothingCount + "','" + EuphoricCount + "''" + EnchantedCount + "','" + MoonlightCount + "','" + DivineCount + "','" + Total + "')";
        
        st.executeUpdate(query);
    }

    private void connectToDB() throws SQLException {
        
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/arcana_candles";
        
        try {
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url,"root","");
            st = (Statement) con.createStatement();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Order.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    
    
    
}
