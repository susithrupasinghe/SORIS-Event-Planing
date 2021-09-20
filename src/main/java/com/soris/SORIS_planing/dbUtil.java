package com.soris.SORIS_planing;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbUtil {

    protected static Connection initializeDatabase()
        throws SQLException, ClassNotFoundException
    {

        String dbDriver = "com.mysql.jdbc.Driver";
        String dbURL = "jdbc:mysql:// localhost:3306/";
        // Database name to access
        String dbName = "soris";
        String Username = "root";
        String Password = "root";

        Class.forName(dbDriver);
        Connection con = DriverManager.getConnection(dbURL,Username,Password);
        return con;
    }

    public void CloseConnection(Connection con)  throws SQLException{
        con.close();
    }

}
