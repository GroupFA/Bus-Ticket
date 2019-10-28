/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author Admin
 */
public class JDBCConnection {
     public static PreparedStatement getJDBCConnection(String sql){
            PreparedStatement cone = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conec = DriverManager.getConnection("jdbc:mysql://localhost:3306/bus","root","");
            cone = (PreparedStatement) conec.prepareStatement(sql);
        }
        catch(Exception e){
        }
        return cone;
    }
}
