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
     public static Connection getJDBCConnection(){
    	 Connection cone = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cone = DriverManager.getConnection("jdbc:mysql://localhost:3306/bus","root","");
        }
        catch(Exception e){
        }
        return cone;
    }
//     public static void main(String[] args) {
//    	 Connection cone = getJDBCConnection();
//		if(cone!=null) {
//			System.out.println("true");
//		}else {
//			System.out.println("fail");
//		}
//	}
}
