package com.soris.SORIS_planing.sp.viewService;

import com.soris.SORIS_planing.dbUtil;
import java.lang.reflect.Array;

import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ServiceUtil {

    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    public static List<Service> printDetails(int spID){
        ArrayList<Service> ser = new ArrayList<>();


        try {
            con = com.soris.SORIS_planing.dbUtil.initializeDatabase();
            stmt = con.createStatement();

            String sql = "SELECT sid, name, category, price, discount, description FROM service WHERE spid = '"+spID+"'";
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
}
