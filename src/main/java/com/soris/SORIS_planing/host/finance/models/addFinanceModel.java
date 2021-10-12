package com.soris.SORIS_planing.host.finance.models;

import java.sql.Connection;
import com.soris.SORIS_planing.dbUtil;

import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.List;

public class addFinanceModel extends dbInit{

    public addFinanceModel() throws SQLException, ClassNotFoundException {
       super();

    }



    public boolean addFinance(int eId, String description, double amount, boolean income, boolean expense) throws SQLException, ClassNotFoundException {
        try {

            String sql = "Insert into finance(eid,description,amount,income,expense) values ('" + eId + "','" + description + "','" + amount + "','" + income + "','" + expense + "')";

            Statement stat = con.createStatement();
            String query = String.format("Insert into finance(eid,description,amount,income,expense) values ('%d','%s','%f',%b,%b)",eId,description,amount,income,expense);
            int count = stat.executeUpdate(query);

            if (count > 0) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }

        }



    public HashMap<String,String> getEventList(String hid){
        try {
            Statement stmt = con.createStatement();
            String sql = "SELECT eid, name FROM event WHERE hid = '"+hid+"'";
            ResultSet res = stmt.executeQuery(sql);
            HashMap<String,String> eventList = new HashMap<String,String>();

            while(res.next()) {
                eventList.put(res.getString("eid"),res.getString("name"));
                System.out.println(res.getString("name"));
            }

            return eventList;


        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }


    }

    }

