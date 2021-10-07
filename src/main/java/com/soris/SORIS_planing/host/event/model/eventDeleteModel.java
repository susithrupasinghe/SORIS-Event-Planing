package com.soris.SORIS_planing.host.event.model;

import java.sql.Array;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.soris.SORIS_planing.dbUtil;

public class eventDeleteModel {
    private Connection con;

    public eventDeleteModel() throws SQLException, ClassNotFoundException {
        this.con = dbUtil.initializeDatabase();
    }
    public boolean eventDelete(String eid)
    {
        try{
            Statement stmt = con.createStatement();
            String sql =" delete event, eventservices,finance from event INNER join eventservices on event.eid=eventservices.eid INNER JOIN finance on eventservices.eid=finance.eid where event.eid='"+eid+"';";
            int count= stmt.executeUpdate(sql);
            if(count>0){
                return true;
            }else{
                return false;
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return false;
        }

    }


}
