package com.soris.SORIS_planing.admin.dashboard.models;

import com.soris.SORIS_planing.dbUtil;

import javax.swing.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class homeModel {

    private Connection con;

    public homeModel() throws SQLException, ClassNotFoundException {
        Connection con = dbUtil.initializeDatabase();
        this.con = con;
    }

    public int getServiceProviderCount(){
        try {

            String query = String.format("SELECT COUNT(*) FROM serviceprovider");
            Statement st = this.con.createStatement();
            ResultSet res = st.executeQuery(query);
            res.next();
            return res.getInt(1);
        } catch (Exception ex) {
            System.out.println(ex);
            return 0;
        }
    }

    public int getHostUsersCount(){
        try {

            String query = String.format("SELECT COUNT(*) FROM host");
            Statement st = this.con.createStatement();
            ResultSet res = st.executeQuery(query);
            res.next();
            return res.getInt(1);
        } catch (Exception ex) {
            System.out.println(ex);
            return 0;
        }
    }

    public int getServicesCount(){
        try {

            String query = String.format("SELECT COUNT(*) FROM service WHERE status='approved'");
            Statement st = this.con.createStatement();
            ResultSet res = st.executeQuery(query);
            res.next();
            return res.getInt(1);
        } catch (Exception ex) {
            System.out.println(ex);
            return 0;
        }
    }

    public int getEventCount(){
        try {

            String query = String.format("SELECT COUNT(*) FROM event");
            Statement st = this.con.createStatement();
            ResultSet res = st.executeQuery(query);
            res.next();
            return res.getInt(1);
        } catch (Exception ex) {
            System.out.println(ex);
            return 0;
        }
    }
    public HashMap<String, Integer> getSummeryOfServices(){

        try {

            String query = String.format("SELECT status, COUNT(*) FROM service GROUP BY status");
            Statement st = this.con.createStatement();
            ResultSet res = st.executeQuery(query);
            HashMap<String,Integer> statusSet = new HashMap<String,Integer>();
            int total = 0;
            while(res.next()) {
                statusSet.put(res.getString("status"), res.getInt(2));
                total+=res.getInt(2);
            }
            statusSet.put("total", total);
            return statusSet;
        } catch (Exception ex) {
            System.out.println(ex);
            return null;
        }

    }

    public List<topServiceProviderModel> getTopServiceProviders(){

        List<topServiceProviderModel> spList = new ArrayList<topServiceProviderModel>();

        try {

            String query = "SELECT sp.spid,sp.brandname,sp.contactno,sp.address,sp.email, SUM(sprovider.SerCount) AS count FROM serviceprovider sp\n" +
                    "LEFT OUTER JOIN (SELECT s.spid AS SerId, serviceCount.total AS SerCount FROM service s LEFT OUTER JOIN \n" +
                    "(SELECT es.sid, COUNT(es.sid) AS total FROM eventservices es GROUP BY es.sid) \n" +
                    "AS serviceCount ON serviceCount.sid = s.sid) AS sprovider ON sprovider.SerId = sp.spid\n" +
                    "GROUP BY sp.spid order by SUM(sprovider.SerCount) DESC";
            Statement st = this.con.createStatement();
            ResultSet res = st.executeQuery(query);

            while(res.next()){
                topServiceProviderModel topServiceProvider = new topServiceProviderModel();
                topServiceProvider.setBrandName(res.getString("brandname"));
                topServiceProvider.setContactNo(res.getString("contactno"));
                topServiceProvider.setAddress(res.getString("address"));
                topServiceProvider.setEmail(res.getString("email"));
                topServiceProvider.setCount(res.getInt("count"));
                spList.add(topServiceProvider);

            }
            return spList;
        } catch (Exception ex) {
            System.out.println(ex);
            return null;
        }
    }

    public List<topServiceModel> getTopServices(){
        List<topServiceModel> sList = new ArrayList<topServiceModel>();

        try{
            String query = "SELECT service.sid, name, services.summ, category, price, discount, description, status FROM service INNER JOIN \n" +
                    "(SELECT sid, sum(count) AS summ FROM soris.eventservices group by sid) AS services ON services.sid = service.sid ORDER BY services.summ DESC;";
            Statement st = this.con.createStatement();
            ResultSet res = st.executeQuery(query);

            while(res.next()){
                topServiceModel topService = new topServiceModel();
                topService.setName(res.getString("name"));
                topService.setCount(res.getInt("summ"));
                topService.setCategory(res.getString("category"));
                topService.setPrice((float)res.getInt("price"));
                topService.setDiscount( (float)res.getInt("discount"));
                sList.add(topService);

            }
            return sList;
        }
        catch (Exception ex){
            return null;
        }

    }

}
