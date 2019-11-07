/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import entities.Users;

/**
 *
 * @author Admin
 */
public class AccountModel {

	public Users LoginAccount(Users re) {

		Users ac = new Users();
		try {
			String sql = "select * from user where username = ?";
			PreparedStatement pr = JDBCConnection.getJDBCConnection().prepareStatement(sql);

			pr.setString(1, re.getUsername());

			ResultSet rs = pr.executeQuery();

			if (rs.next()) {

				if (rs.getString(2).equals(re.getUsername()) && rs.getString(3).equals(re.getPassword())) {
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

	public static ArrayList<Users> getListUser() {

		ArrayList<Users> list = new ArrayList<>();
		try {
			String sql = "SELECT * FROM `user`";
			Statement statement = JDBCConnection.getJDBCConnection().createStatement();
			ResultSet rs = statement.executeQuery(sql);

			while (rs.next()) {
				String username = rs.getString(2);
				String password = rs.getString(3);
				String fullName = rs.getString(4);
				String gender = rs.getString(5);
				String address = rs.getString(6);
				String phoneNum = rs.getString(7);
				String role = rs.getString(8);
				String email = rs.getString(9);
				int idUser = rs.getInt(1);
				Users users = new Users(username, password, fullName, gender, address, phoneNum, role, email, idUser);
				list.add(users);
			

			}

		} catch (Exception e) {
	
		}

		return list;

	}

	public static Users getIdUser(int idUser) {
		Users users = null;
		try {
			String sql = "select * from user where idUser = ?";
			PreparedStatement pr = JDBCConnection.getJDBCConnection().prepareStatement(sql);

			pr.setInt(1, idUser);

			ResultSet rs = pr.executeQuery();

			if (rs.next()) {
				String username = rs.getString(2);
				String password = rs.getString(3);
				String fullName = rs.getString(4);
				String gender = rs.getString(5);
				String address = rs.getString(6);
				String phoneNum = rs.getString(7);
				String role = rs.getString(8);
				String email = rs.getString(9);
				idUser = rs.getInt(1);
				users = new Users(username, password, fullName, gender, address, phoneNum, role, email, idUser);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return users;
	}

	public static boolean updateUser( String username, String password, String fullName, String value[], String address,
			String phoneNum, String valueRole[], String email, int idUser) {

		try {

			String sql = "update user set password = ?, fullName = ?, gender = ?, address=?, phoneNum = ?, role = ?, email = ?, username = ? where idUser = ?";

			String gender = null;
			String role = null;
			PreparedStatement pr = JDBCConnection.getJDBCConnection().prepareStatement(sql);
			pr.setInt(9, idUser);
			pr.setString(8,  username);
			pr.setString(1, password);
			pr.setString(2, fullName);
			pr.setString(4, address);
			pr.setString(5, phoneNum);

			pr.setString(7, email);

			for (int i = 0; i < valueRole.length; i++) {
				role = valueRole[i];
			}
			pr.setString(6, role);


			for (int i = 0; i < value.length; i++) {
				gender = value[i];
			}
			pr.setString(3, gender);
			pr.executeUpdate();



		} catch (Exception e) {

			e.printStackTrace();
		}
		return false;



	}




	

	public static boolean insertUser(String username, String password, String fullName, String value[], String address,
			String phoneNum, String valueRole[], String email) {
		try {

			String sql = "INSERT INTO `user`( `username`, `password`, `fullName`, `gender`, `address`, `phoneNum`, `role`, `email`) VALUES (?,?,?,?,?,?,?,?)";

			String gender = null;
			String role = null;
			PreparedStatement pr = JDBCConnection.getJDBCConnection().prepareStatement(sql);
			pr.setString(1, username);
			pr.setString(2, password);
			pr.setString(3, fullName);
			pr.setString(5, address);
			pr.setString(6, phoneNum);

			pr.setString(8, email);
			for (int i = 0; i < valueRole.length; i++) {
				role = valueRole[i];
			}
			pr.setString(7, role);

			for (int i = 0; i < value.length; i++) {
				gender = value[i];
			}
			pr.setString(4, gender);
			pr.executeUpdate();

		} catch (Exception e) {

			e.printStackTrace();
		}
		return false;


	}

	public static ArrayList<Users> searchUser(String keySearch){
		ArrayList<Users> listSearch = new ArrayList<>();
		try {
		
			String sql = " SELECT * FROM  user WHERE username LIKE '%" + keySearch + "%' or gender LIKE '%" + keySearch + "%' or fullName LIKE '%" + keySearch + "%' or address LIKE '%" + keySearch + "%' or role LIKE '%" + keySearch + "%' or email LIKE '%" + keySearch + "%'";
			PreparedStatement pr = JDBCConnection.getJDBCConnection().prepareStatement(sql);
		
			ResultSet rs = pr.executeQuery();
			
			while(rs.next()) {
				String username = rs.getString(2);
				String password = rs.getString(3);
				String fullName = rs.getString(4);
				String gender = rs.getString(5);
				String address = rs.getString(6);
				String phoneNum = rs.getString(7);
				String role = rs.getString(8);
				String email = rs.getString(9);
				int idUser = rs.getInt(1);
				 Users us = new Users(username, password, fullName, gender, address, phoneNum, role, email, idUser);
				 listSearch.add(us);
			}
			
		}catch (Exception e) {
			System.out.println(e +"fghjk");
			e.printStackTrace();
		}
		return listSearch;
		
	

	}
	
	

//	public static Users getUserById(int getuserbyid) {
//		Users users = new Users();
//		try {
//			String sql = "select * from user where idUser = '" + getuserbyid + "'";
//			PreparedStatement pr = JDBCConnection.getJDBCConnection().prepareStatement(sql);
//			ResultSet rs = pr.executeQuery();
//
//			if (rs.next()) {
//				users = new Users(rs.getString("username"), rs.getString("password"), rs.getString("fullName"),
//						rs.getString("gender"), rs.getString("address"), rs.getString("phoneNum"), rs.getString("role"),
//						rs.getString("email"), rs.getInt("idUser"));
//
//			}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//		
//			e.printStackTrace();
//		}
//
//		return users;
//	}

}
