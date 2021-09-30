package com.soris.SORIS_planing.host.event.model;

import java.sql.Connection;
import java.sql.SQLException;

import com.soris.SORIS_planing.dbUtil;

public class eventUpdateModel {

    private Connection con;


    public eventUpdateModel() throws SQLException, ClassNotFoundException {
        this.con= dbUtil.initializeDatabase();
    }


}
