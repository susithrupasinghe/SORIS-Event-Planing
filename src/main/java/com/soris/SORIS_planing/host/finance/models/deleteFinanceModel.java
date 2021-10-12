package com.soris.SORIS_planing.host.finance.models;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;

import com.soris.SORIS_planing.dbUtil;

public class deleteFinanceModel extends dbInit{

    public deleteFinanceModel() throws SQLException, ClassNotFoundException{
        super();
    }
    public boolean deleteFinance(String fid)
    {
        try{
            Statement stmt = con.createStatement();
            String sql = "DELETE FROM finance WHERE fid = '"+fid+"'";
            int count = stmt.executeUpdate(sql);
            if(count > 0){
                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }

    }
}

