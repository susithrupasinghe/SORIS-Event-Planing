package com.soris.SORIS_planing.sp.Service.models;

public class service {
    //Variable declaration and initialization
    private int sID;
    private String name;
    private String category;
    private double price;
    private double discount;
    private String description;
    private String status;
    private  String image;

    //Constructor
    public service(int sID, String name, String category, double price, double discount, String description, String status, String image) {
        this.sID = sID;
        this.name = name;
        this.category = category;
        this.price = price;
        this.discount = discount;
        this.description = description;
        this.status = status;
        this.image = image;
    }

    public int getsID() {
        return sID;
    }

    public String getName() {
        return name;
    }

    public String getCategory() {
        return category;
    }

    public double getPrice() {
        return price;
    }

    public double getDiscount() {
        return discount;
    }

    public String getDescription() {
        return description;
    }

    public String getstatus() {
        return status;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
