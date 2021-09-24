package com.soris.SORIS_planing.sp.Service.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class serviceModel {
    private static boolean isSuccess = false;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;



    public boolean insertService(String servicetname,String category, double price, double discount, String description) {
//        boolean isSuccess = false;

        try {

            con = com.soris.SORIS_planing.dbUtil.initializeDatabase();
            stmt = con.createStatement();

            String sql = "insert into service values (0,0,'" + servicetname + "', '" + category + "', '" + price + "', '" + price + "', '" + discount + "','" + description + "')";

            int rs = stmt.executeUpdate(sql);

            if(rs > 0){
                isSuccess = true;
            }else{
                isSuccess = false;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    //service view
    public List<service> getServiceDetails(String spID){
        ArrayList<service> ser = new ArrayList<>();

        int converspID = Integer.parseInt(spID);

        try {
            con = com.soris.SORIS_planing.dbUtil.initializeDatabase();
            stmt = con.createStatement();

            String sql = "SELECT sid, name, category, price, discount, description FROM service WHERE spid ='"+converspID+"'";
            rs = stmt.executeQuery(sql);

            while (rs.next()){
                int sID = rs.getInt(1);
                String name = rs.getString(3);
                String category = rs.getString(4);
                double price = rs.getDouble(5);
                double discount = rs.getDouble(6);
                String description = rs.getString(6);

                service s = new service(sID , name, category, price, discount, description);
                ser.add(s);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return ser;
    }

    //update service
    public boolean updateService(int sID, String name, String category, double price, double discount, String description){

        try{
            con = com.soris.SORIS_planing.dbUtil.initializeDatabase();
            stmt = con.createStatement();

            String sql = "UPDATE service set name = '"+name+"', category= '"+category+"', price= '"+price+"', discount= '"+discount+"', description= '"+description+"'"
                         + "WHERE sid = 3";

            int rs = stmt.executeUpdate(sql);

            if(rs > 0){
                isSuccess = true;
            }else{
                isSuccess = false;
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return isSuccess;
    }

    public boolean deleteService(String id){

        int convertID = Integer.parseInt(id);

        try{
            con = com.soris.SORIS_planing.dbUtil.initializeDatabase();
            stmt = con.createStatement();

            String sql = "DELETE FROM service WHERE sid = '"+convertID+"'";

            int rs;
            rs = stmt.executeUpdate(sql);

            if(rs > 0){
                isSuccess = true;
            }else{
                isSuccess = false;
            }

        }catch (Exception e){
            e.printStackTrace();
        }

        return isSuccess;
    }

}
