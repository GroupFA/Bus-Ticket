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
    private String 
    
   userName,passWord,address,gender,fullName,Email,phoneNum;
    
    private  int
           idUsers;

    public Registration() {
    }

    public Registration(String userName, String passWord, String phoneNum, String address, String gender, String fullName, String Email, int idUsers) {
        this.userName = userName;
        this.passWord = passWord;
        this.phoneNum = phoneNum;
        this.address = address;
        this.gender = gender;
        this.fullName = fullName;
        this.Email = Email;
        this.idUsers = idUsers;
    }
    public Registration(String userName, String passWord, String phoneNum, String address, String gender, String fullName, String Email) {
        this.userName = userName;
        this.passWord = passWord;
        this.phoneNum = phoneNum;
        this.address = address;
        this.gender = gender;
        this.fullName = fullName;
        this.Email = Email;
       
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public int getIdUsers() {
        return idUsers;
    }

    public void setIdUsers(int idUsers) {
        this.idUsers = idUsers;
    }

  
    
}
