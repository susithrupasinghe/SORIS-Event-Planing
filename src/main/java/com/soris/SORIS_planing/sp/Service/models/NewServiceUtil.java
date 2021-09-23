package com.soris.SORIS_planing.sp.Service.models;

import com.soris.SORIS_planing.dbUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class NewServiceUtil {
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    public static boolean insertService(String servicetname,String category, double price, double discount, String description) {
        boolean isSuccess = false;

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
    public static List<Service> printDetails(){
        ArrayList<Service> ser = new ArrayList<>();

        try {
            con = com.soris.SORIS_planing.dbUtil.initializeDatabase();
            stmt = con.createStatement();

            String sql = "SELECT sid, name, category, price, discount, description FROM service WHERE spid = 0";
            rs = stmt.executeQuery(sql);

            if(rs.next()){
                int sID = rs.getInt(1);
                String name = rs.getString(3);
                String category = rs.getString(4);
                double price = rs.getDouble(5);
                double discount = rs.getDouble(6);
                String description = rs.getString(6);

                Service s = new Service(sID , name, category, price, discount, description);
                ser.add(s);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return ser;
    }

    //update service

}
