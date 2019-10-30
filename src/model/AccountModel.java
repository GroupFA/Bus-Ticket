/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;





import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import entities.Users;

/**
 *
 * @author Admin
 */
public class AccountModel {

	public AccountModel() {
	}

	public Users LoginAccount(Users re) {
//		System.out.println("123");
			Users ac = new Users();
		try {
			String sql = "select * from user where username = ?";
			PreparedStatement pr = JDBCConnection.getJDBCConnection().prepareStatement(sql);
			
			pr.setString(1, re.getUsername());
			
			ResultSet rs = pr.executeQuery();

			if (rs.next()) {
						
					if(rs.getString(2).equals(re.getUsername()) && rs.getString(3).equals(re.getPassword())) {
						ac.setIdUser(rs.getInt(1));
	                    ac.setUsername(rs.getString(2));
	                    ac.setPassword(rs.getString(3));
	                    ac.setFullName(rs.getString(4));
	                    ac.setGender(rs.getString(5));
	                    ac.setAddress(rs.getString(6));
	                    ac.setPhoneNum(rs.getString(7));
	                    ac.setRole(rs.getString(8));
	                    ac.setEmail(rs.getString(9));
	                    return ac;
					}
					
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;// loginthat bai ???
		
	}
	public static ArrayList<Users> getListUser(){
		ArrayList<Users> list =new ArrayList<>();
		try {
			String sql = "select * from user";
			Statement statement = JDBCConnection.getJDBCConnection().createStatement();
			ResultSet rs = statement.executeQuery(sql);
			
			while (rs.next()) {// Di chuyển con trỏ xuống bản ghi kế tiếp.
				String username = rs.getString(2);
				String password = rs.getString(3);
				String fullName = rs.getString(4);
				String gender = rs.getString(5);
				String address = rs.getString(6);
				String phoneNum = rs.getString(7);
				String role = rs.getString(9);
				String email = rs.getString(10);
				Users users = new Users(username, password, fullName, gender, address, phoneNum, role, email);
				list.add(users);
			
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
		
	}

}
