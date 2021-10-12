package com.soris.SORIS_planing.host.event.model;

import com.soris.SORIS_planing.dbUtil;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class eventDeleteModel extends dbInit{


    public eventDeleteModel() throws SQLException, ClassNotFoundException {
        super();

    }
    public boolean eventDelete(String eid)
    {
        try{
            Statement stmt = con.createStatement();
            String sql ="delete event, eventservices,finance from event left join eventservices on event.eid=eventservices.eid  left JOIN finance on event.eid=finance.eid where event.eid= '"+eid+"';";
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
