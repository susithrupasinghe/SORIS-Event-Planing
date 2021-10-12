package com.soris.SORIS_planing.admin.dashboard.models;

import com.soris.SORIS_planing.dbUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class servicePageModel extends dbInit{
    private final static Logger LOGGER =
            Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);

    public servicePageModel() throws SQLException, ClassNotFoundException {
       super();
        LOGGER.log(Level.INFO, "DB connection constructor called");
    }

    public List<serviceModel> getAllServices(){
        List<serviceModel> serviceList = new ArrayList<serviceModel>();
        try {

            String query = String.format("SELECT * FROM service");
            Statement st = this.con.createStatement();
            ResultSet res = st.executeQuery(query);

            while(res.next()) {
                serviceModel service = new serviceModel();
                service.setId(res.getInt("sid"));
                service.setName(res.getString("name"));
                service.setCategory(res.getString("category"));
                service.setPrice((float)res.getInt("price"));
                service.setDiscount((float)res.getInt("discount"));
                service.setDescription(res.getString("description"));
                service.setStatus(res.getString("status"));
                serviceList.add(service);
            }

            return serviceList;
        } catch (Exception ex) {
            LOGGER.log(Level.INFO, ex.getMessage());
            return null;
        }
    }
}
