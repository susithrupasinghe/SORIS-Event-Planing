package com.soris.SORIS_planing.sp.Service.models;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class servicesSummaryModel extends dbInit{

    private ResultSet rs;

    public servicesSummaryModel() throws SQLException, ClassNotFoundException {
        super();

    }

    //get services count
    public int getServiceCount(String spID){
        try{
            String sql = String.format("SELECT COUNT(*) FROM service WHERE spid = '"+spID+"'");
            Statement stmt = this.con.createStatement();
            rs = stmt.executeQuery(sql);
            rs.next();
            return rs.getInt(1);

        }catch (Exception e){
            e.printStackTrace();
            return 0;
        }

    }

    //get services summery
    public HashMap<String, Integer> getSummeryOfServices(String spID){

        try {
            int total = 0;

            String sql = String.format("SELECT status, COUNT(*) FROM service WHERE spid = '"+spID+"' GROUP BY status");
            Statement stmt = this.con.createStatement();
            rs = stmt.executeQuery(sql);
            HashMap<String,Integer> statusSet = new HashMap<String,Integer>();

            while(rs.next()) {
                statusSet.put(rs.getString("status"), rs.getInt(2));
                total+=rs.getInt(2);
            }

            statusSet.put("total", total);
            return statusSet;
        } catch (Exception ex) {
            System.out.println(ex);
            return null;
        }
    }

    //services summery(category)
    public HashMap<String, Integer> getcatSumOfServices(String spID){

        try {
            int total = 0;

            String sql = String.format("SELECT category, COUNT(*) FROM service WHERE spid = '"+spID+"' GROUP BY category");
            Statement stmt = this.con.createStatement();
            rs = stmt.executeQuery(sql);
            HashMap<String,Integer> statusSet = new HashMap<String,Integer>();

            while(rs.next()) {
                statusSet.put(rs.getString("category"), rs.getInt(2));
                total+=rs.getInt(2);
            }

            statusSet.put("total", total);
            return statusSet;
        } catch (Exception ex) {
            System.out.println(ex);
            return null;
        }
    }

    //get top services
    public List<topServicesModel> getTopServices(String spID){
        List<topServicesModel> serviceList = new ArrayList<topServicesModel>();

        try{
            String sql = String.format("SELECT ser.sid,ser.name,SUM(count) AS summ,ser.category,ser.price,ser.discount,ser.description from service as ser, eventservices as eve WHERE ser.spid ='"+spID+"' AND ser.sid = eve.sid AND ser.status='approved' GROUP BY sid ORDER BY SUM(count) DESC");
            Statement stmt = this.con.createStatement();

            rs = stmt.executeQuery(sql);

            while(rs.next()){
                topServicesModel topServices = new topServicesModel();
                topServices.setName(rs.getString("name"));
                topServices.setCount(rs.getInt("summ"));
                topServices.setCategory(rs.getString("category"));
                topServices.setPrice((float)rs.getInt("price"));
                topServices.setDiscount( (float)rs.getInt("discount"));
                serviceList.add(topServices);

            }
            return serviceList;
        }
        catch (Exception ex){
            return null;
        }
    }

    //get service provider address
    public String getAddress(String spID){
        try{
            String sql = String.format("SELECT address FROM serviceprovider WHERE spid = '"+spID+"'");
            Statement stmt = this.con.createStatement();
            rs = stmt.executeQuery(sql);
            rs.next();
            return rs.getString(1);

        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    //get service provide phone number
    public String getPhoneNum(String spID){
        try{
            String sql = String.format("SELECT contactno FROM serviceprovider WHERE spid = '"+spID+"'");
            Statement stmt = this.con.createStatement();
            rs = stmt.executeQuery(sql);
            rs.next();
            return rs.getString(1);

        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    //get service provider mail
    public String getMail(String spID){
        try{
            String sql = String.format("SELECT email FROM serviceprovider WHERE spid = '"+spID+"'");
            Statement stmt = this.con.createStatement();
            rs = stmt.executeQuery(sql);
            rs.next();
            return rs.getString(1);

        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

}
