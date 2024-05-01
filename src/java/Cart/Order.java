/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cart;

import com.mysql.jdbc.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS
 */
class Order {
    Connection con;
    PreparedStatement ps;

    void addOrder(String userId, Integer TranquilCount, Integer RomanticCount, Integer SoothingCount, Integer EuphoricCount,
            Integer EnchantedCount, Integer MoonlightCount, Integer DivineCount, Integer Total) throws SQLException {
        connectToDB();
        String query = "INSERT INTO orders(user_id,tranquil,romantic,soothing,euphoric,enchanted,moonlight,divine,total) VALUES(?,?,?,?,?,?,?,?,?)";
        ps = con.prepareStatement(query);
        ps.setString(1, userId);
        ps.setInt(2, TranquilCount);
        ps.setInt(3, RomanticCount);
        ps.setInt(4, SoothingCount);
        ps.setInt(5, EuphoricCount);
        ps.setInt(6, EnchantedCount);
        ps.setInt(7, MoonlightCount);
        ps.setInt(8, DivineCount);
        ps.setInt(9, Total);
        ps.executeUpdate();
    }

    private void connectToDB() throws SQLException {
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/arcana_candles";

        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, "root", "");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Order.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}