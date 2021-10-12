package com.soris.SORIS_planing.admin.dashboard.models;

import com.soris.SORIS_planing.dbUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class serviceUpdateModel {

    private Connection con;
    public serviceUpdateModel() throws SQLException, ClassNotFoundException {
        dbUtil jdbcObj = dbUtil.getInstance();
        this.con = jdbcObj.initializeDatabase();
    }

    public void deteleServiceById(String id)
    {
        try{
            String query = String.format("DELETE FROM service WHERE sid='%s'",id);
            Statement st = this.con.createStatement();
            int res = st.executeUpdate(query);
        }
        catch (Exception ex)
        {
            ex.printStackTrace();
        }

    }
    public void updateServiceStatus(String id, String status)
    {
        try{
            String query = String.format("UPDATE service SET status = '%s' WHERE sid='%s'",status,id);
            Statement st = this.con.createStatement();
            int res = st.executeUpdate(query);
        }
        catch (Exception ex)
        {
            ex.printStackTrace();
        }
    }
}
