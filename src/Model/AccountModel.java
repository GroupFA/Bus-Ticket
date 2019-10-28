/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import com.sun.org.apache.bcel.internal.generic.RETURN;
import entities.Account;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class AccountModel {

    public AccountModel() {
    }

    public int LoginAccount(Account a) {

        try {
            String sql = "select * from users where userName = ?";
            PreparedStatement pr = (PreparedStatement) JDBCConnection.getJDBCConnection(sql);
            pr.setString(1, a.getUsername());
            
            ResultSet rs = pr.executeQuery();

            if (rs.next()) {
                if (rs.getString(2).equals(a.getUsername()) && rs.getString(3).equals(a.getPassword())) {
                    System.out.println("thanh cong ");
                    return 2;

                } else {
                    System.out.println("sai password");
                    return 3;

                }

            } else {
                System.out.println("username khong ton tai");
                return 4;

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
 return 0;//loginthat bai
    }
   
   
   
}
