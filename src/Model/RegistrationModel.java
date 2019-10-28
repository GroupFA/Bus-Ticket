/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import entities.Account;
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
            String sql = "select * from users";
            PreparedStatement pr = (PreparedStatement) JDBCConnection.getJDBCConnection(sql);
            ResultSet rs = pr.executeQuery();
            while(rs.next()){
                Registration temp = new Registration(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6),rs.getString(7),rs.getInt(8));
                list.add(temp);
            }
            pr.close();
            
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return list;
    
    }
     public int insertProduct(Registration p){
    int kq=0;
    try{
        String sql= "insert into users(`userName`,`password`,`phoneNum`,`address`,`gender`,`fullName`,`Email`) values(?,?,?,?,?,?,?)";
        PreparedStatement pr = (PreparedStatement) JDBCConnection.getJDBCConnection(sql);
        pr.setString(1, p.getUserName());
        pr.setString(2, p.getPassWord());
        pr.setString(3,p.getPhoneNum());
        pr.setString(4,p.getAddress());
        pr.setString(5,p.getGender());
        pr.setString(6,p.getFullName());
        pr.setString(7,p.getEmail());
      
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
