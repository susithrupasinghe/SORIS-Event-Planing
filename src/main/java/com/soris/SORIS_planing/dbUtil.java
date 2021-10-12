package com.soris.SORIS_planing;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbUtil {

    //// Singleton Design Pattern ///

    /// Static member holds the one instance of dbutil class
    private  static dbUtil jdbc;

    /// return exisitng instance of dbutil or create new instance
    public static dbUtil getInstance(){

        if(jdbc ==null){
            jdbc = new dbUtil();
        }
        return  jdbc;
    }

    public Connection initializeDatabase()
        throws SQLException, ClassNotFoundException
    {

        String dbDriver = "com.mysql.jdbc.Driver";
        String dbURL = "jdbc:mysql://localhost:3306/soris";
        // Database name to access
        String dbName = "soris";
        String Username = "root";
        String Password = "root";

        Class.forName(dbDriver);
        Connection con = DriverManager.getConnection(dbURL,Username,Password);
        return con;
    }

}
