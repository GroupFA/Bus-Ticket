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

/**
 *
 * @author Admin
 */
public class AccountModel {

	public AccountModel() {
	}

	public Registration LoginAccount(Registration re) {
//		System.out.println("123");
			Registration ac = new Registration();
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

}
