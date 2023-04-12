/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tp2dpbo;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
//import java.util.logging.Logger;

/**
 *
 * @author elsan
 */
public class dbConnection {
   public static Statement stmt;
   public static Connection conn;
    
private void connect(){
    try{
        String ConAddress = "jdbc:mysql://localhost/tp2";
        String user = "root";
        String pass = "";
        Class.forName("com.mysql.jdbc.Driver");
        conn = (Connection) DriverManager.getConnection(ConAddress, user, pass);
        stmt = (Statement) conn.createStatement();
                
    }catch(ClassNotFoundException | SQLException ex){
    //    Logger.getLogger(dbConecction.class.getName()).Log()
        System.out.println(ex.getMessage());
        
    }

}

public ResultSet selectQuery(String sql){
    try{
        stmt.executeQuery(sql);
        return stmt.getResultSet();
    }catch (SQLException ex){
        System.out.println(ex.getMessage());
    }
    return null;

}
public int updateQuery(String sql){
    try{
        return stmt.executeUpdate(sql);
    } catch (SQLException ex){
        System.out.println(ex.getMessage());
        
    }
    return 0;
}

public Statement getStatement(){
    return stmt;
}

 public ResultSet Query(String in) {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
       try{
            connect();
            String sql = in;
            return stmt.executeQuery(sql);
            
        }catch(SQLException e){
            System.err.println("Read gagal " +e.getMessage());
        }
        return null;
    }

    PreparedStatement prepareStatement(String sql) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
