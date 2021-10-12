package com.soris.SORIS_planing.host.finance.models;

import com.soris.SORIS_planing.dbUtil;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class viewFinanceModel {
    private Connection con;

    public viewFinanceModel() throws SQLException, ClassNotFoundException {
        dbUtil jdbcObj = dbUtil.getInstance();
        this.con = jdbcObj.initializeDatabase();
    }

    public List<finance> getFinanceDetails(String eid){
        ArrayList <finance> fin = new ArrayList<>();

        int converteid = Integer.parseInt(eid);

        try{

            Statement stat = this.con.createStatement();
            String sql = "SELECT fid,eid,description,expense,income,amount FROM finance WHERE eid='"+converteid+"'";
            ResultSet rs = stat.executeQuery(sql);

            while(rs.next()){
                finance finance = new finance();
                finance.setFid(rs.getInt("fid"));
                finance.setEid(rs.getInt("eid"));
                finance.setDescription(rs.getString("description"));
                finance.setExpense(rs.getBoolean("expense"));
                finance.setIncome(rs.getBoolean("income"));
                finance.setAmount(rs.getDouble("amount"));


//                int fid = rs.getInt(1);
//                int eid = rs.getInt(2);
//                String description = rs.getString(3);
//                boolean expense = rs.getBoolean(4);
//                boolean income = rs.getBoolean(5);
//                double amount = rs.getDouble(6);
//
//                finance f = new finance(fid,eid,description,expense,income,amount);
                fin.add(finance);
            }
            return fin;
        }
        catch (Exception e){
            e.printStackTrace();
            return null;
        }

    }

}