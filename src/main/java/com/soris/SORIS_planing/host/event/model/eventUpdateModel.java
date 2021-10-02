package com.soris.SORIS_planing.host.event.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.soris.SORIS_planing.dbUtil;

public class eventUpdateModel {

    private Connection con;


    public eventUpdateModel() throws SQLException, ClassNotFoundException {
        this.con= dbUtil.initializeDatabase();
    }
    //return event details
    public List<event> eventList(int hid) throws SQLException {
        ArrayList<event> eList= new ArrayList<>();
        int _hid= hid;

        try {
            Statement stmt= con.createStatement();
            String sql= "SELECT eid,date,name,description,estimatedcost,currentcost FROM event WHERE hid='"+_hid+"'";
            ResultSet rs= stmt.executeQuery(sql);
            while(rs.next()){
                event event=new event();
                event.setEid(rs.getInt("eid"));
                event.setDate(rs.getString("date"));
                event.setName(rs.getString("name"));
                event.setDescription(rs.getString("description"));
                event.setEstimatedCost(rs.getDouble("estimatedcost"));
                event.setCurrentCost(rs.getDouble("currentcost"));
                eList.add(event);
            }
            return eList;


        }catch (Exception e){
            e.printStackTrace();
            return null;
        }

    }

    public event eventDetails(int eid) throws SQLException {
        int _eid= eid;
        event event= new event();
        try{
            Statement stmt= con.createStatement();
            String sql="SELECT date,name,description,estimatedcost,currentcost FROM event WHERE eid='"+_eid+"'";
            ResultSet rs=stmt.executeQuery(sql);
            while (rs.next()){
                event.setDate(rs.getString("date"));
                event.setName(rs.getString("name"));
                event.setDescription(rs.getString("description"));
                event.setEstimatedCost(rs.getDouble("estimatedcost"));
                event.setCurrentCost(rs.getDouble("currentcost"));

            }
            return event;

        }catch (Exception e)
        {
            e.printStackTrace();
            return null;
        }


    }


    public boolean eventUpdate(int eid,String date,String name,String description,double estimatedCost) throws SQLException {
        try {
            Statement stmt = con.createStatement();
            String sql = "UPDATE event SET date='" + date + "',name='" + name + "',description='" + description + "',estimatedcost='" + estimatedCost +  "' WHERE eid='" + eid + "'";

            int count = stmt.executeUpdate(sql);
            if (count > 0) {
                return true;
            } else {
                return false;
            }
        }catch (Exception e){
            return false;
        }
    }



}
