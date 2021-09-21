package com.soris.SORIS_planing.host.event;

public class event {
    private int eid;
    private int hid;
    private String name;
    private String description;
    private int estimatedCost;
    private int currentCost;

    public event(int eid, int hid, String name, String description, int estimatedCost, int currentCost) {
        this.eid = eid;
        this.hid = hid;
        this.name = name;
        this.description = description;
        this.estimatedCost = estimatedCost;
        this.currentCost = currentCost;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public int getHid() {
        return hid;
    }

    public void setHid(int hid) {
        this.hid = hid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getEstimatedCost() {
        return estimatedCost;
    }

    public void setEstimatedCost(int estimatedCost) {
        this.estimatedCost = estimatedCost;
    }

    public int getCurrentCost() {
        return currentCost;
    }

    public void setCurrentCost(int currentCost) {
        this.currentCost = currentCost;
    }
}
