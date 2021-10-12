package com.soris.SORIS_planing.admin.auth.models;
import com.soris.SORIS_planing.dbUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class signInModel {

    private String email;
    private String password;
    private Connection con;

    public signInModel() throws SQLException, ClassNotFoundException {

        // Get instance from dbutil
        // Using the singleton pattern
        dbUtil jdbcObj = dbUtil.getInstance();
        this.con = jdbcObj.initializeDatabase();

    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public String getuserId(){
        try {

            String query = String.format("SELECT aid as userid FROM admin WHERE email='%s'", email);
            Statement st = this.con.createStatement();
            ResultSet res = st.executeQuery(query);
            res.next();
            return res.getString("userid");
        } catch (Exception ex) {

            return "";
        }
    }
    public String getName(){
        try {

            String query = String.format("SELECT name as Name FROM admin WHERE email='%s'", email);
            Statement st = this.con.createStatement();
            ResultSet res = st.executeQuery(query);
            res.next();
            return res.getString("Name");
        } catch (Exception ex) {

            return "";
        }
    }
    public boolean checkEmailExists(String email) {
        try {

            String query = String.format("SELECT COUNT(*) as rowcount FROM admin WHERE email='%s'", email);
            Statement st = this.con.createStatement();
            ResultSet res = st.executeQuery(query);
            res.next();
            return res.getInt("rowcount") > 0;
        } catch (Exception ex) {

            return false;
        }
    }
    public boolean validate(){

        try{
            String query = String.format("SELECT password as password FROM admin WHERE email='%s'", this.email);
            Statement st = this.con.createStatement();
            ResultSet res = st.executeQuery(query);
            res.next();

            String _pass = res.getString("password");

            if(this.password.equals(_pass)){
                return true;
            }
            else {
                return false;
            }
        }
        catch (Exception ex){
            return false;

        }

    }
}
