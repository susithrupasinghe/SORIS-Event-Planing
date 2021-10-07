package com.soris.SORIS_planing.sp.auth.models;

import com.soris.SORIS_planing.dbUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class signUpModel {

    private String email;
    private String brand;
    private String contact;
    private String address;
    private String password;
    private Connection con;

    public signUpModel() throws SQLException, ClassNotFoundException {
        Connection con = dbUtil.initializeDatabase();
        this.con = con;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean checkEmailExists() {
        try {

            String query = String.format("SELECT COUNT(*) as rowcount FROM serviceprovider WHERE email='%s'", this.email);
            Statement st = this.con.createStatement();
            ResultSet res = st.executeQuery(query);
            res.next();
            return res.getInt("rowcount") > 0;
        } catch (Exception ex) {

            return false;
        }
    }
    public boolean addUser(){
        try {

            String query = String.format("INSERT INTO serviceprovider (email,brandname,contactno,address,password) VALUES('%s','%s','%s','%s','%s')",
                    this.email,this.brand,this.contact,this.address,this.password);
            Statement st = this.con.createStatement();
            int count = st.executeUpdate(query);
            if(count > 0){
                return true;
            }
            else {
                return false;
            }
        } catch (Exception ex) {

            return false;
        }
    }
}
