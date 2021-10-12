package com.soris.SORIS_planing.host.finance.models;

import com.soris.SORIS_planing.dbUtil;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;

public class updateFinanceModel {

    private Connection con;

    public updateFinanceModel() throws SQLException, ClassNotFoundException {
        dbUtil jdbcObj = dbUtil.getInstance();
        this.con = jdbcObj.initializeDatabase();
    }

    public boolean updateFinance(int fid, String description, double amount, boolean income, boolean expense) throws SQLException {
        try {
            Statement stat = con.createStatement();
            String sql = "UPDATE finance SET  description='" + description + "',amount='" + amount + "',income=" + income + ",expense=" + expense + " " + "where fid='" + fid + "'";

            int count = stat.executeUpdate(sql);

            if (count > 0) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            return false;
        }
    }

    public finance financeDetails(int fid) throws SQLException {
        finance finance = new finance();
        try {
            Statement stmt = con.createStatement();
            String sql = "SELECT eid,description,expense,income,amount FROM finance WHERE fid='" + fid + "'";
            ResultSet rs = stmt.executeQuery(sql);
            rs.next();

                finance.setDescription(rs.getString("description"));
                finance.setExpense(rs.getBoolean("expense"));
                finance.setIncome(rs.getBoolean("income"));
                finance.setAmount(rs.getDouble("amount"));

            return finance;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}