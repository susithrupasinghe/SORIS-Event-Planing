package com.soris.SORIS_planing.host.services.models;

import com.soris.SORIS_planing.dbUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;

public class serviceHandlerModel {
    private Connection con;


    public serviceHandlerModel() throws SQLException, ClassNotFoundException {
        dbUtil jdbcObj = dbUtil.getInstance();
        this.con = jdbcObj.initializeDatabase();
    }

    public List<serviceModel> serviceListByCategory(String category){
        List<serviceModel> serviceList =  new ArrayList<>();
        try {

            String query = String.format("SELECT * FROM service WHERE category='%s' AND status='approved'",category);
            Statement st = this.con.createStatement();
            ResultSet res = st.executeQuery(query);


            while(res.next()) {
                serviceModel service = new serviceModel();
                service.setSid(res.getString("sid"));
                service.setSpid(res.getString("spid"));
                service.setName(res.getString("name"));
                service.setCategory(res.getString("category"));
                service.setPrice(res.getString("price"));
                service.setDiscount(res.getString("discount"));
                service.setDescription(res.getString("description"));
                service.setStatus(res.getString("status"));
                Blob imgBlob = res.getBlob("images");
                String imgBase64 = Base64.getEncoder().encodeToString(imgBlob.getBytes(1, (int) imgBlob.length()));
                service.setImages(imgBase64);

                serviceList.add(service);

            }
            return serviceList;
        } catch (Exception ex) {
            System.out.println(ex);
            return null;
        }
    }

    public serviceModel getServiceById(String sid){

        try {

            String query = String.format("SELECT * FROM service WHERE  sid='%s'",sid);
            Statement st = this.con.createStatement();
            ResultSet res = st.executeQuery(query);
            res.next();
            serviceModel service = new serviceModel();

            service.setSid(res.getString("sid"));
            service.setSpid(res.getString("spid"));
            service.setName(res.getString("name"));
            service.setCategory(res.getString("category"));
            service.setPrice(res.getString("price"));
            service.setDiscount(res.getString("discount"));
            service.setDescription(res.getString("description"));
            service.setStatus(res.getString("status"));
            Blob imgBlob = res.getBlob("images");
            String imgBase64 = Base64.getEncoder().encodeToString(imgBlob.getBytes(1, (int) imgBlob.length()));
            service.setImages(imgBase64);

            return service;
        } catch (Exception ex) {
            System.out.println(ex);
            return null;
        }

    }

    public spModel getServiceProviderById(String spid){
        try {

            String query = String.format("SELECT * FROM serviceprovider WHERE  spid='%s'",spid);
            Statement st = this.con.createStatement();
            ResultSet res = st.executeQuery(query);
            res.next();
            spModel serviceProvider = new spModel();

            serviceProvider.setSpid(Integer.parseInt(res.getString("spid")));
            serviceProvider.setBrandname(res.getString("brandname"));
            serviceProvider.setContactno(res.getString("contactno"));
            serviceProvider.setAddress(res.getString("address"));
            serviceProvider.setEmail(res.getString("email"));
            serviceProvider.setPassword(res.getString("password"));

            return serviceProvider;
        } catch (Exception ex) {
            System.out.println(ex);
            return null;
        }

    }
    public HashMap<String,String> getEvents(String hid){
        try{
            HashMap<String, String> events = new HashMap<>();
            String query = String.format("SELECT * FROM event WHERE  hid='%s'",hid);
            Statement st = this.con.createStatement();
            ResultSet res = st.executeQuery(query);
            while (res.next()){
                events.put(res.getString("eid"),res.getString("name"));
            }
            return  events;
        }
        catch (Exception ex)
        {
            System.out.println(ex);
            return null;
        }

    }

    public boolean addServiceToBudget(String eid, String sid, int count){

        try{
            String query = String.format("SELECT * FROM service WHERE  sid='%s'",sid);
            Statement st = this.con.createStatement();
            ResultSet res = st.executeQuery(query);
            res.next();

            float totalPrice = Float.parseFloat(res.getString("price")) * count;

            query = String.format("INSERT INTO eventservices (eid,sid,count) VALUES('%s','%s','%d')",eid,sid,count);
            Statement st2 = this.con.createStatement();
            int res2 = st2.executeUpdate(query);
            if(res2 > 0){

                String description = res.getString("name");

                query = String.format("INSERT INTO finance (eid,description,expense,income,amount) VALUES('%s','%s',%b,%b,%f)",eid,description,true,false,totalPrice);
                Statement st3 = this.con.createStatement();
                int res3 = st3.executeUpdate(query);
                if(res3 > 0){
                    return true;
                }
                else {
                    return false;
                }

            }
            else {
                return  false;
            }

        }
        catch (Exception ex){
            System.out.println(ex);
            return false;
        }


    }

    public HashMap<String,String> getEventList(String hid){
        try {
            Statement stmt = con.createStatement();
            String sql = "SELECT eid, name FROM event WHERE hid = '"+hid+"'";
            ResultSet res = stmt.executeQuery(sql);
            HashMap<String,String> eventList = new HashMap<String,String>();

            while(res.next()) {
                eventList.put(res.getString("eid"),res.getString("name"));
                System.out.println(res.getString("name"));
            }

            return eventList;


        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }


    }

    public List<selectedServicesModel> getSelectedServices(String eid){
        List<selectedServicesModel> selectedServices =  new ArrayList<selectedServicesModel>();
        try {
            Statement stmt = con.createStatement();
            String sql = String.format("SELECT es.sid, es.esid, ser.name, ser.category, ser.description, es.count, ser.discount, ser.price as qtyPrice, ser.price*es.count as totalPrice  FROM soris.eventservices as es, soris.service as ser where es.eid = '%s' AND es.sid = ser.sid",eid);
            ResultSet res = stmt.executeQuery(sql);

            while(res.next()) {
                selectedServicesModel service = new selectedServicesModel();
                service.setSid(res.getString("sid"));
                service.setEsid(res.getString("esid"));
                service.setName(res.getString("name"));
                service.setCategory(res.getString("category"));
                service.setDescription(res.getString("description"));
                service.setQuantity(res.getInt("count"));
                service.setDiscount(Float.parseFloat(res.getString("discount")));
                service.setQtyPrice(Float.parseFloat(res.getString("qtyPrice")));
                service.setTotalPrice(Float.parseFloat(res.getString("totalPrice")));
                selectedServices.add(service);

            }

            return selectedServices;


        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }


    }

    public boolean deleteService(String esid)
    {
        try{
            Statement stmt = con.createStatement();
            String sql = "DELETE FROM eventservices WHERE esid = '"+esid+"'";
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
