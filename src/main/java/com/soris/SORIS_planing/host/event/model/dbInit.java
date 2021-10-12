package com.soris.SORIS_planing.host.event.model;

import com.soris.SORIS_planing.dbUtil;

import java.sql.Connection;
import java.sql.SQLException;

public class dbInit {
    // create connection to database.parent class to models

    protected Connection con;
    public dbInit() throws SQLException, ClassNotFoundException {
        dbUtil jdbcObj = dbUtil.getInstance();
        this.con = jdbcObj.initializeDatabase();
    }

}
