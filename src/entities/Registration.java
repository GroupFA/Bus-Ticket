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
public class Registration {
	public Registration( String username, String password, String fullName, String gender, String address,
			String phoneNum, String email) {
		super();
		this.idUser = idUser;
		this.username = username;
		this.password = password;
		this.fullName = fullName;
		this.gender = gender;
		this.address = address;
		this.phoneNum = phoneNum;
		this.role = role;
		this.email = email;
	}




    public Registration( String username, String password, String fullName, String gender, String address,
			String phoneNum, String role, String email) {
		super();
	
		this.username = username;
		this.password = password;
		this.fullName = fullName;
		this.gender = gender;
		this.address = address;
		this.phoneNum = phoneNum;
		this.role = role;
		this.email = email;
	}

	private  int
    idUser;

	public Registration(int idUser, String username, String password, String fullName, String gender, String address,
			String phoneNum, String role, String email) {
		super();
		this.idUser = idUser;
		this.username = username;
		this.password = password;
		this.fullName = fullName;
		this.gender = gender;
		this.address = address;
		this.phoneNum = phoneNum;
		this.role = role;
		this.email = email;
	}

	private String 
    
   username,password,fullName, gender, address,phoneNum,role,email;
    
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
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}



	

}
