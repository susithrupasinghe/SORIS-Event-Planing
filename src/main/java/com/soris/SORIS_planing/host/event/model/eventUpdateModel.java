package com.soris.SORIS_planing.host.event.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class eventUpdateModel extends dbInit{
    //read database and update
    private final static Logger LOGGER =
            Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);

    public eventUpdateModel() throws SQLException, ClassNotFoundException {
       super();

    }
    //return event details related to one host user
    public List<event> eventList(int hid) throws SQLException {
        ArrayList<event> eList= new ArrayList<>();

        try {
            Statement stmt= con.createStatement();
            String sql= "SELECT eid,date,name,description,estimatedcost FROM event WHERE hid='"+ hid +"'";
            ResultSet rs= stmt.executeQuery(sql);
            while(rs.next()){
                event event=new event();
                event.setEid(rs.getInt("eid"));
                event.setDate(rs.getString("date"));
                event.setName(rs.getString("name"));
                event.setDescription(rs.getString("description"));
                event.setEstimatedCost(rs.getDouble("estimatedcost"));
                //get current cost
                String queryCost ="SELECT SUM(amount) AS cost FROM finance where eid ='"+event.getEid()+"' AND expense = 1";
                Statement stmt1=con.createStatement();
                ResultSet cost=stmt1.executeQuery(queryCost);
                cost.next();
                event.setCurrentCost(cost.getDouble("cost"));
                //get current income
                String queryIncome ="SELECT SUM(amount) AS income FROM finance where eid ='"+event.getEid()+"' AND income = 1";
                Statement stmt2=con.createStatement();
                ResultSet income=stmt2.executeQuery(queryIncome);
                income.next();
                event.setCurrentIncome(income.getDouble("income"));


                eList.add(event);
            }
            return eList;


        }catch (Exception e){
            e.printStackTrace();
            return null;
        }

    }
    // return details related to a single event
    public event eventDetails(int eid) throws SQLException {
        event event= new event();
        try{
            Statement stmt= con.createStatement();
            String sql="SELECT date,name,description,estimatedcost FROM event WHERE eid='"+ eid +"'";
            ResultSet rs=stmt.executeQuery(sql);
            while (rs.next()){
                event.setDate(rs.getString("date"));
                event.setName(rs.getString("name"));
                event.setDescription(rs.getString("description"));
                event.setEstimatedCost(rs.getDouble("estimatedcost"));


            }
            return event;

        }catch (Exception e)
        {
            e.printStackTrace();
            return null;
        }


    }
    //update a row in event database
    public boolean eventUpdate(int eid,String date,String name,String description,double estimatedCost) throws SQLException {
        try {
            Statement stmt = con.createStatement();
            String sql = "UPDATE event SET date='" + date + "',name='" + name + "',description='" + description + "',estimatedcost='" + estimatedCost +  "' WHERE eid='" + eid + "'";
            int count = stmt.executeUpdate(sql);
            if (count > 0) {
                LOGGER.log(Level.INFO, "Event updated successfully");
                return true;
            } else {
                LOGGER.log(Level.INFO, "Event update failed");
                return false;
            }
        }catch (Exception e){
            return false;
        }
    }



}
