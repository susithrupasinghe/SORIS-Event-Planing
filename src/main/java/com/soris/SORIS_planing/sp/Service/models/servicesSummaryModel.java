package com.soris.SORIS_planing.sp.Service.models;

import com.soris.SORIS_planing.dbUtil;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class servicesSummaryModel {
    /*private int isSuccess;*/
    private Connection con = null;
    private Statement stmt = null;
    private ResultSet rs;

    //get services count
    public int getServiceCount(String spID){
        try{
            con = dbUtil.initializeDatabase();
            stmt = con.createStatement();

            String sql = "SELECT COUNT(*) FROM service WHERE spid = '"+spID+"'";
            rs = stmt.executeQuery(sql);
            rs.next();
            return rs.getInt(1);

        }catch (Exception e){
            e.printStackTrace();
            return 0;
        }

    }
}
