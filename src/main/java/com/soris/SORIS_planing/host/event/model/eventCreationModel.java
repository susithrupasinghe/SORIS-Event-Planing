package com.soris.SORIS_planing.host.event.model;


import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class eventCreationModel  extends  dbInit{
    private final static Logger LOGGER =
            Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);
    private String name;
    private String description;
    private String date;
    private double estimatedCost;
    private int hid;

    public eventCreationModel() throws SQLException, ClassNotFoundException {
       super();
    }

    //add data to event table
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
                LOGGER.log(Level.INFO, "Event created successfully");
                return true;
            }
            else {
                LOGGER.log(Level.INFO, "Event creation failed");
                return false;
            }


        } catch (Exception e) {
            return false;
        }
    }


}
