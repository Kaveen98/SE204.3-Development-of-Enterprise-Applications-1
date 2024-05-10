
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class User {
    private Statement st;
    private Connection con;
    
    private int userid;
    private String username;
    private String contactno;
    private String address;
    private String email;
    private String password;

    public User(int userid, String username, String contactno, String address, String email, String password) {
        
        this.userid = userid;
        this.username = username;
        this.contactno = contactno;
        this.address = address;
        this.email = email;
        this.password = password;
        
    }

    
    public User() {
        
    }


    public void addUser(String username, String contactno, String address, String email, String password) throws SQLException, ClassNotFoundException {
        
        connectToDB();
        String query = "INSERT INTO user(username,contactno,address,email,password) VALUES('" + username + "','" + contactno + "','" + address + "','" + email + "','" + password + "')";
        
        st.executeUpdate(query); 
    }

    
    public static List<User> getUsers() throws SQLException, ClassNotFoundException {
        
        List<User> users = new ArrayList<>();
        
        
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/arcana_candles";
        
        try{
        Connection con = DriverManager.getConnection(url,"root","");
        String sql = "SELECT * FROM user";
        Statement st = con.createStatement();
        ResultSet result = st.executeQuery(sql);
        
                while (result.next()) {
                    User user = new User(result.getInt("userid"), result.getString("username"), result.getString("contactno"), result.getString("address"), result.getString("email"), result.getString("password"));
                    users.add(user);
                } 
                
        }catch (SQLException ex) {
            ex.printStackTrace();
        }
        return users;
        
    }
    
   
    
    private void connectToDB() throws SQLException, ClassNotFoundException {
        
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

    
    
    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getContactno() {
        return contactno;
    }

    public void setContactno(String contactno) {
        this.contactno = contactno;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    } 
    
}
