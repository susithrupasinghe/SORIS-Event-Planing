package com.soris.SORIS_planing.sp.Service.models;

/*import com.soris.SORIS_planing.sp.Service.models.serviceBuilder;*/

public class service {
    private int sID;
    private String name;
    private String category;
    private double price;
    private double discount;
    private String description;
    private String status;

    public service(int sID, String name, String category, double price, double discount, String description, String status) {
        this.sID = sID;
        this.name = name;
        this.category = category;
        this.price = price;
        this.discount = discount;
        this.description = description;
        this.status = status;
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



   /* private final int sID;
    private final int spID;
    private final String name;
    private final String category;
    private final double price;
    private final double discount;
    private final String description;
    private final String status;

    service(serviceBuilder serBuild) {
        this.sID = serBuild.sID(sI);
        this.spID = spID;
        this.name = name;
        this.category = category;
        this.price = serBuild;
        this.discount = discount;
        this.description = description;
        this.status = status;
    }

    public int getsID() {
        return sID;
    }

    public int getSpID() {
        return spID;
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

    public String getStatus() {
        return status;
    }*/
}
