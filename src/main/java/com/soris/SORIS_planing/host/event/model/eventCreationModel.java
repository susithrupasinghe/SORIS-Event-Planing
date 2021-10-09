package com.soris.SORIS_planing.host.event.model;


import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import com.soris.SORIS_planing.dbUtil;

public class eventCreationModel {
    private String name;
    private String description;
    private String date;
    private double estimatedCost;
    private  Connection con;
    private int hid;

    public eventCreationModel() throws SQLException, ClassNotFoundException {
        this.con = dbUtil.initializeDatabase();
    }

    public boolean addEvent(String name, String description, double estimatedCost, int hid,String d) {
        try {
            //assign variables
            this.name = name;
            this.description = description;
            this.estimatedCost = estimatedCost;
            this.hid=hid;
            this.date=d;

            //insert into database
            String query = "INSERT INTO event(hid,date,name,description,estimatedcost) VALUES ('"+hid+"','"+date+"','"+name+"','"+description+"','"+estimatedCost+"')";
            Statement stmt = this.con.createStatement();
            int count = stmt.executeUpdate(query);
            if(count>0){
                return true;
            }
            else {
                return false;
            }


        } catch (Exception e) {
            return false;
        }
    }


}
