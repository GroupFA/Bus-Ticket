/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

/**
 *
 * @author Admin
 */
public class Users {
	
	private String 
    
	   username,password,fullName, gender, address,phoneNum,role,email;
	private int IdUser;
	public Users(String username, String password) {
		
		this.username = username;
		this.password = password;
	}
	public Users() {
		
		// TODO Auto-generated constructor stub
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getIdUser() {
		return IdUser;
	}
	public void setIdUser(int idUser) {
		IdUser = idUser;
	}
	public Users(String username, String password, String fullName, String gender, String address,
			String phoneNum, String role, String email, int idUser) {
		
		this.username = username;
		this.password = password;
		this.fullName = fullName;
		this.gender = gender;
		this.address = address;
		this.phoneNum = phoneNum;
		this.role = role;
		this.email = email;
		IdUser = idUser;
	}
	
}
