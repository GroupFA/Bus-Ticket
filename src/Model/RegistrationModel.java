/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;


import entities.Registration;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class RegistrationModel {
    public ArrayList getList(){
    ArrayList<Registration> list = new ArrayList<>();
    
    
    try{
            String sql = "select * from user";
            PreparedStatement pr = JDBCConnection.getJDBCConnection().prepareStatement(sql);
            ResultSet rs = pr.executeQuery();
            while(rs.next()){
                Registration temp = new Registration();
                list.add(temp);
            }
            pr.close();
            
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return list;
    
    }
     public int insertUsers(Registration p){
    int kq=0;
    try{
        String sql= "INSERT INTO `bus`.`user` (`username`, `password`, `fullName`, `gender`, `address`, `phoneNum`, `role`, `email`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
        PreparedStatement pr = JDBCConnection.getJDBCConnection().prepareStatement(sql);
        pr.setString(1,p.getUsername());
        pr.setString(2, p.getPassword());
        pr.setString(3,p.getFullName());
        pr.setString(4,p.getGender());
        pr.setString(5,p.getAddress());
        pr.setString(6,p.getPhoneNum());
        pr.setString(7,"Customer");
        pr.setString(8,p.getEmail());
      
        pr.executeUpdate();
    }catch (SQLException e) {
            e.printStackTrace();
        }
        return kq;
    
    }
     
//    public Reputation getidproducts(int idproduct){
//     
//      Reputation products = new Reputation();
//     try{
//     String sql = "select * from products where id = '"+idproduct+"' ";
//            PreparedStatement pr = (PreparedStatement) JDBCConnection.getJDBCConnection(sql);
//           
//            ResultSet rs = pr.executeQuery();
//            if(rs.next()){
//               products = new Reputation(rs.getString("userName"),rs.getString("password"),rs.getInt("phoneNum"),rs.getString("address"),rs.getString("gender"),rs.getString("fullName"),rs.getString("Email"),rs.getInt("idUsers"));
//                        
//            }
//     }catch(SQLException e){
//     e.printStackTrace();
//     }
//        return products;
//     
//     }
}
