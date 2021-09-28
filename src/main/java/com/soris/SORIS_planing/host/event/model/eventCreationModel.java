package com.soris.SORIS_planing.host.event.model;


import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import com.soris.SORIS_planing.dbUtil;

public class eventCreationModel {
    private String name;
    private String description;
    private Date date;
    private int estimatedCost;
    private  Connection con;
    private int hid;

    public eventCreationModel() throws SQLException, ClassNotFoundException {
        this.con = dbUtil.initializeDatabase();
    }

    public boolean addEvent(String name, String description, int estimatedCost, int hid, Date date) {
        try {
            //assign variables
            this.name = name;
            this.description = description;
            this.estimatedCost = estimatedCost;
            this.hid=hid;
            this.date=date;

            //insert into database
            String query = String.format("INSERT INTO event (hid,name,description,estimatedcost,currentcost) VALUES" +
                    "('%d','%s','%s','%d','%d')", this.hid,this.name, this.description, this.estimatedCost,0);
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
