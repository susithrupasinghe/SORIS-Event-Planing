package com.soris.SORIS_planing.host.finance.models;

import com.soris.SORIS_planing.dbUtil;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class viewFinanceModel extends dbInit{

    public viewFinanceModel() throws SQLException, ClassNotFoundException {
        super();
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