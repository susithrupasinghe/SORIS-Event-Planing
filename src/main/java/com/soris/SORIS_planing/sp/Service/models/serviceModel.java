package com.soris.SORIS_planing.sp.Service.models;

import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.google.protobuf.Service;
import com.soris.SORIS_planing.dbUtil;

import javax.servlet.http.Part;

public class serviceModel extends Details {
    private boolean isSuccess = false;
    private Connection con;
   /* private Statement stmt = null;*/
    private ResultSet rs;

    public serviceModel() throws SQLException, ClassNotFoundException {
        Connection con = dbUtil.initializeDatabase();
        this.con = con;
    }

    public boolean insertService(int spId, String servicetname, String category, double price, double discount, String description, Part img) {


        try {
            /*con = dbUtil.initializeDatabase();
            stmt = con.createStatement();*/

            /*String sql = "insert into soris.service(spid,name,category,price,discount,description) values (spId,'"+servicetname+"', '"+category+"', '"+price+"', '"+discount+"','"+description+"')";*/
            InputStream imgBlob = img.getInputStream();
            System.out.println(imgBlob.toString());
//            String sql = String.format("insert into soris.service(spid,name,category,price,discount,description,status,images) values (?,?,?,?,?,?,?,?)");
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

    //service view
    public List<service> getServiceDetails(String spID){
        ArrayList<service> ser = new ArrayList<>();

        int converspID = Integer.parseInt(spID);

        try {
           /* con = dbUtil.initializeDatabase();
            stmt = con.createStatement();*/

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
//                Blob image = rs.getBlob("images");

//                byte imageByteArray[] = image.getBytes(1, (int) image.length());

                service s = new service(sID , name, category, price, discount, description, status, null);
                ser.add(s);
            }
            return ser;

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
//        return ser;
    }

    public boolean deleteService(String sId){

        /*     int convertID = Integer.parseInt(sIO);*/


        try{
            /*con = com.soris.SORIS_planing.dbUtil.initializeDatabase();
            stmt = con.createStatement();
*/
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

    @Override
    String getName(String spID) {
        try{
           /* con = dbUtil.initializeDatabase();
            stmt = con.createStatement();*/

            String sql = String.format("SELECT address FROM serviceprovider WHERE spid = '"+spID+"'");
            Statement stmt = this.con.createStatement();
            rs = stmt.executeQuery(sql);
            rs.next();
            return rs.getString(1);

        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }




    /*//get services count

    public boolean serviceCount(String sID){
        try{
            con = com.soris.SORIS_planing.dbUtil.initializeDatabase();
            stmt = con.createStatement();

            String sql = "SELECT COUNT(*) FROM service WHERE sid = '"+sID+"'";

            rs = stmt.executeQuery(sql);

            rs.next();

        }catch (Exception e){
            e.printStackTrace();
        }


        return isSuccess;

    }*/


    /*public service getUpdateDetails(int sID){
        try{
            con = dbUtil.initializeDatabase();
            stmt = con.createStatement();

            String sql = "SELECT name, category, price, discount, description, status FROM service WHERE sid ='"+sID+"'";
            ResultSet rs=stmt.executeQuery(sql);

            rs.next();
            String name = rs.getString(1);
            String category = rs.getString(2);
            double price = rs.getDouble(3);
            double discount = rs.getDouble(4);
            String description = rs.getString(5);
            String status = rs.getString(6);
            service s = new service(sID , name, category, price, discount, description, status);
            return s;

        }catch(Exception e){
            e.printStackTrace();
            return null;
        }

    }*/

}
