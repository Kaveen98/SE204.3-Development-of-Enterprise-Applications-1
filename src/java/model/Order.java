
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Order {
        private Statement st;
        private Connection con;

    public static List<Order> getOrders() {
        List<Order> orders = new ArrayList<>();
        String url = "jdbc:mysql://localhost:3306/arcana_candles";
        try (Connection con = DriverManager.getConnection(url, "root", "");
             Statement st = con.createStatement();
             ResultSet result = st.executeQuery("SELECT * FROM orders")) {
            while (result.next()) {
            Integer orderid = result.getInt("order_id");
            Integer userid = result.getInt("user_id");
            Integer TranquilCount = result.getInt("tranquil");
            Integer RomanticCount = result.getInt("romantic");
            Integer SoothingCount = result.getInt("soothing");
            Integer EuphoricCount = result.getInt("euphoric");
            Integer EnchantedCount = result.getInt("enchanted");
            Integer MoonlightCount = result.getInt("moonlight");
            Integer DivineCount = result.getInt("divine");
            Integer Total = result.getInt("total");
            Order order = new Order(userid, TranquilCount, RomanticCount, SoothingCount, EuphoricCount, EnchantedCount, MoonlightCount, DivineCount, Total);
            orders.add(order);
        }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return orders;
    }

    public Order() {
         try {
        addOrder(userid, TranquilCount, RomanticCount, SoothingCount, EuphoricCount, EnchantedCount, MoonlightCount, DivineCount, Total);
    } catch (SQLException ex) {
        ex.printStackTrace();
    }
    }
    

    public void addOrder(Integer userid, Integer TranquilCount, Integer RomanticCount, Integer SoothingCount, Integer EuphoricCount, Integer EnchantedCount, Integer MoonlightCount, Integer DivineCount, Integer Total) throws SQLException {
        
        connectToDB();
        String query = "INSERT INTO orders (user_id,tranquil,romantic,soothing,euphoric,enchanted,moonlight,divine,total) VALUES('" + userid + "','" + TranquilCount + "','" + RomanticCount + "','" + SoothingCount + "','" + EuphoricCount + "','" + EnchantedCount + "','" + MoonlightCount + "','" + DivineCount + "','" + Total + "')";
        
        st.executeUpdate(query); 
        
    }
    

    private void connectToDB() throws SQLException {
        
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/arcana_candles";
        
        try {
            Class.forName(driver);
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
            con = DriverManager.getConnection(url,"root","");
            st = con.createStatement();  
    }
    
    Integer userid;
    Integer TranquilCount;
    Integer RomanticCount;
    Integer SoothingCount;
    Integer EuphoricCount;
    Integer EnchantedCount;
    Integer MoonlightCount;
    Integer DivineCount;
    Integer Total;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getTranquilCount() {
        return TranquilCount;
    }

    public void setTranquilCount(Integer TranquilCount) {
        this.TranquilCount = TranquilCount;
    }

    public Integer getRomanticCount() {
        return RomanticCount;
    }

    public void setRomanticCount(Integer RomanticCount) {
        this.RomanticCount = RomanticCount;
    }

    public Integer getSoothingCount() {
        return SoothingCount;
    }

    public void setSoothingCount(Integer SoothingCount) {
        this.SoothingCount = SoothingCount;
    }

    public Integer getEuphoricCount() {
        return EuphoricCount;
    }

    public void setEuphoricCount(Integer EuphoricCount) {
        this.EuphoricCount = EuphoricCount;
    }

    public Integer getEnchantedCount() {
        return EnchantedCount;
    }

    public void setEnchantedCount(Integer EnchantedCount) {
        this.EnchantedCount = EnchantedCount;
    }

    public Integer getMoonlightCount() {
        return MoonlightCount;
    }

    public void setMoonlightCount(Integer MoonlightCount) {
        this.MoonlightCount = MoonlightCount;
    }

    public Integer getDivineCount() {
        return DivineCount;
    }

    public void setDivineCount(Integer DivineCount) {
        this.DivineCount = DivineCount;
    }

    public Integer getTotal() {
        return Total;
    }

    public void setTotal(Integer Total) {
        this.Total = Total;
    }

    public Order(Integer userid, Integer TranquilCount, Integer RomanticCount, Integer SoothingCount, Integer EuphoricCount, Integer EnchantedCount, Integer MoonlightCount, Integer DivineCount, Integer Total) {
        this.userid = userid;
        this.TranquilCount = TranquilCount;
        this.RomanticCount = RomanticCount;
        this.SoothingCount = SoothingCount;
        this.EuphoricCount = EuphoricCount;
        this.EnchantedCount = EnchantedCount;
        this.MoonlightCount = MoonlightCount;
        this.DivineCount = DivineCount;
        this.Total = Total;
    }
 
}
