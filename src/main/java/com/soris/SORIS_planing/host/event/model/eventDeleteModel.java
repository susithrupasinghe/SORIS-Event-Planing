package com.soris.SORIS_planing.host.event.model;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class eventDeleteModel extends dbInit{
    private final static Logger LOGGER =
            Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);


    public eventDeleteModel() throws SQLException, ClassNotFoundException {
        super();

    }
    //delete data from a single row in event table
    public boolean eventDelete(String eid)
    {
        try{
            Statement stmt = con.createStatement();
            String sql ="delete event, eventservices,finance from event left join eventservices on event.eid=eventservices.eid  left JOIN finance on event.eid=finance.eid where event.eid= '"+eid+"';";
            int count= stmt.executeUpdate(sql);
            if(count>0){
                LOGGER.log(Level.INFO, "Event deleted");
                return true;
            }else{
                LOGGER.log(Level.INFO, "Event delete failed");
                return false;
            }

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }


}
