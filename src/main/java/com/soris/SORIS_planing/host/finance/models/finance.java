package com.soris.SORIS_planing.host.finance.models;

public class finance {
    private int fid;
    private int eid;
    private String description;
    private boolean expense;
    private boolean income;
    private double amount;


//    public finance(int fid, int eid, String description, boolean expense, boolean income, double amount) {
//        this.fid = fid;
//        this.eid = eid;
//        this.description = description;
//        this.expense = expense;
//        this.income = income;
//        this.amount = amount;
//    }

//    public finance() {
//
//    }


    public int getFid() {
        return fid;
    }

    public int getEid() {
        return eid;
    }

    public String getDescription() {
        return description;
    }

    public boolean isExpense() {
        return expense;
    }

    public boolean isIncome() {
        return income;
    }

    public double getAmount() {
        return amount;
    }


    public void setFid(int fid) {
        this.fid = fid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setExpense(boolean expense) {
        this.expense = expense;
    }

    public void setIncome(boolean income) {
        this.income = income;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }
}
