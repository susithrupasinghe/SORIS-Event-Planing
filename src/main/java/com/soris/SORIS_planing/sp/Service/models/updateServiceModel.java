package com.soris.SORIS_planing.sp.Service.models;

import com.soris.SORIS_planing.dbUtil;

import javax.servlet.http.Part;
import java.io.InputStream;
import java.sql.*;
import java.util.Base64;

public class updateServiceModel extends dbInit{
    private boolean isSuccess = false;
    private Statement stmt = null;
    private ResultSet rs;

    public updateServiceModel() throws SQLException, ClassNotFoundException {
        super();
    }

    public service getUpdateDetails(int sID){
        try{

            stmt = con.createStatement();

            // get the updated details from parameters
            String sql = "SELECT name, category, price, discount, description, status, images FROM service WHERE sid ='"+sID+"'";
            ResultSet rs=stmt.executeQuery(sql);

            rs.next();
            String name = rs.getString(1);
            String category = rs.getString(2);
            double price = rs.getDouble(3);
            double discount = rs.getDouble(4);
            String description = rs.getString(5);
            String status = rs.getString(6);
            Blob imgBlob = rs.getBlob("images");
            String imgBase64 = Base64.getEncoder().encodeToString(imgBlob.getBytes(1, (int) imgBlob.length()));


            service s = new service(sID , name, category, price, discount, description, status,imgBase64);
            return s;

        }catch(Exception e){
            e.printStackTrace();
            return null;
        }

    }

    //update service
    public boolean updateService(int sID, String name, double price, double discount, String category, String description, Part img){

        try{
            // get the updated details from parameters
            stmt = con.createStatement();
            InputStream imgBlob = img.getInputStream();
            PreparedStatement stmt = this.con.prepareStatement("UPDATE service set name = ?, price= ?, discount= ?,category= ?, description= ?, images=?, status='pending' WHERE sid = ?");
            stmt.setString(1,name);
            stmt.setDouble(2,price);
            stmt.setDouble(3,discount);
            stmt.setString(4,category);
            stmt.setString(5,description);
            stmt.setBlob(6,imgBlob);
            stmt.setInt(7,sID);

            int rs = stmt.executeUpdate();

            if(rs > 0){
                isSuccess = true;
            }else{
                isSuccess = false;
            }

        }catch (Exception e){
            /*e.printStackTrace();*/
            System.out.println(e);
        }
        return isSuccess;
    }
}
