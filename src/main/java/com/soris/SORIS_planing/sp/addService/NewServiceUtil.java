package com.soris.SORIS_planing.sp.addService;

import com.soris.SORIS_planing.dbUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

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


}
