package com.soris.SORIS_planing.host.auth.models;

import com.soris.SORIS_planing.dbUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class signUpModel {

    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private Connection con;

    public signUpModel() throws SQLException, ClassNotFoundException {
        dbUtil jdbcObj = dbUtil.getInstance();
        this.con = jdbcObj.initializeDatabase();
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean checkEmailExists() {
        try {

            String query = String.format("SELECT COUNT(*) as rowcount FROM host WHERE email='%s'", this.email);
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

            String query = String.format("INSERT INTO host (fname,lname,email,password) VALUES('%s','%s','%s','%s')",
                    this.firstName,this.lastName,this.email,this.password);
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
