/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.transport.bean;

/**
 *
 * @author trainee
 */
public class RegistrationBean {

    private String userName;
    private String password;
    private String name;
    private int idRole;
    private long contactNo;
    private int idUser;
     private int area;

    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }
     
     
     
     

    public long getContactNo() {
        return contactNo;
    }

    public void setContactNo(long contactNo) {
        this.contactNo = contactNo;
    }

    public int getIdRole() {
        return idRole;
    }

    public void setIdRole(int idRole) {
        this.idRole = idRole;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
