package com.soris.SORIS_planing.admin.dashboard.models;

import com.soris.SORIS_planing.dbUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class servicePageModel {

    private Connection con;

    public servicePageModel() throws SQLException, ClassNotFoundException {
        Connection con = dbUtil.initializeDatabase();
        this.con = con;
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
            System.out.println(ex);
            return null;
        }
    }
}
