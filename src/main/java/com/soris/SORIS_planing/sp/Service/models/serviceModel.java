package com.soris.SORIS_planing.sp.Service.models;

import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


import javax.servlet.http.Part;

//Extend
public class serviceModel extends dbInit{
    private boolean isSuccess = false;
    private ResultSet rs;

    public serviceModel() throws SQLException, ClassNotFoundException {
        super();
    }

    //Inserting data
    public boolean insertService(int spId, String servicetname, String category, double price, double discount, String description, Part img) {

        try {

            InputStream imgBlob = img.getInputStream();
            System.out.println(imgBlob.toString());

            PreparedStatement stmt = this.con.prepareStatement("insert into soris.service(spid,name,category,price,discount,description,status,images) values (?,?,?,?,?,?,?,?)");

            stmt.setInt(1,spId);
            stmt.setString(2,servicetname);
            stmt.setString(3,category);
            stmt.setDouble(4,price);
            stmt.setDouble(5,discount);
            stmt.setString(6,description);
            stmt.setString(7,"pending");
            stmt.setBlob(8,imgBlob);
            int rs = stmt.executeUpdate();

            if(rs > 0){
                isSuccess = true;
            }else{
                isSuccess = false;
            }

        } catch (Exception e) {
            System.out.println(e);
            e.printStackTrace();
        }

        return isSuccess;
    }

    //Services view
    public List<service> getServiceDetails(String spID){
        ArrayList<service> ser = new ArrayList<>();

        int converspID = Integer.parseInt(spID);

        try {
            String sql = String.format("SELECT sid, name, category, price, discount, description, status, images FROM service WHERE spid ='"+converspID+"'");
            Statement stmt = this.con.createStatement();
            rs = stmt.executeQuery(sql);

            while (rs.next()){
                int sID = rs.getInt(1);
                String name = rs.getString("name");
                String category = rs.getString(3);
                double price = rs.getDouble(4);
                double discount = rs.getDouble(5);
                String description = rs.getString(6);
                String status = rs.getString(7);

                service s = new service(sID , name, category, price, discount, description, status, null);
                ser.add(s);
            }
            return ser;

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }


    //Deleting data
    public boolean deleteService(String sId){

        try{
            String sql = String.format("DELETE soris.service, soris.eventservices FROM service LEFT JOIN eventservices ON service.sid = eventservices.sid WHERE service.sid = '"+sId+"'");
            Statement stmt = this.con.createStatement();
            int rs;
            rs = stmt.executeUpdate(sql);

            if(rs > 0){
                isSuccess = true;
            }else{
                isSuccess = false;
            }

        }catch (Exception e){
            e.printStackTrace();
        }

        return isSuccess;
    }
}
