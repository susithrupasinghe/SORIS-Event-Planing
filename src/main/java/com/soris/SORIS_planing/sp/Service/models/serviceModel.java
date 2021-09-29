package com.soris.SORIS_planing.sp.Service.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.soris.SORIS_planing.dbUtil;

public class serviceModel {
    private boolean isSuccess = false;
    private Connection con = null;
    private Statement stmt = null;
    private ResultSet rs;

//    public serviceModel() throws SQLException, ClassNotFoundException {
//        Connection con = dbUtil.initializeDatabase();
//        this.con = con;
//    }

    public boolean insertService(int spId,String servicetname,String category, double price, double discount, String description) {


        try {
            con = dbUtil.initializeDatabase();
            stmt = con.createStatement();

            String sql = "insert into soris.service(spid,name,category,price,discount,description) values (spId,'"+servicetname+"', '"+category+"', '"+price+"', '"+discount+"','"+description+"')";
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
                String name = rs.getString(2);
                String category = rs.getString(3);
                double price = rs.getDouble(4);
                double discount = rs.getDouble(5);
                String description = rs.getString(6);

                service s = new service(sID , name, category, price, discount, description);
                ser.add(s);
            }
            return ser;

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
//        return ser;
    }

    //update service
    public boolean updateService(int sID, String name, double price, double discount, String description){
/*, String category*/
        try{
            con = com.soris.SORIS_planing.dbUtil.initializeDatabase();
            stmt = con.createStatement();

            String sql = "UPDATE service set name = '"+name+"', price= '"+price+"', discount= '"+discount+"', description= '"+description+"' WHERE sid = 1";//, category= '"+category+"'

            int rs = stmt.executeUpdate(sql);

            if(rs > 0){
                isSuccess = true;
            }else{
                isSuccess = false;
            }

        }catch (Exception e){
            /*e.printStackTrace();*/
            System.out.println(e);
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
