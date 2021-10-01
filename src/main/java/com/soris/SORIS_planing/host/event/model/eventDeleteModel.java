package com.soris.SORIS_planing.host.event.model;

import java.sql.Connection;
import java.sql.SQLException;

import com.soris.SORIS_planing.dbUtil;

public class eventDeleteModel {
    private Connection con;

    public eventDeleteModel() throws SQLException, ClassNotFoundException {
        this.con = dbUtil.initializeDatabase();
    }


}
