package com.soris.SORIS_planing.sp.Service.models;

import com.soris.SORIS_planing.dbUtil;

import java.sql.Connection;
import java.sql.SQLException;

public class dbInit {

    protected Connection con;
    public dbInit() throws SQLException, ClassNotFoundException {
        dbUtil jdbcObj = dbUtil.getInstance();
        this.con = jdbcObj.initializeDatabase();
    }

}
