package com.khoahd7621.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtils {

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Connection conn = null;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String url = "jdbc:sqlserver://localhost:1143;databaseName=PlantShopDB";
        conn = DriverManager.getConnection(url, "sa", "12345678");
        return conn;
    }

}

class Testing{
    public static void main(String[] args) {
        try {
            Connection con = new DBUtils().getConnection();
            System.out.println("Ket noi thang cong");
        } catch (Exception e) {
            System.out.println("Ket noi that bai " + e.getMessage());
        }
    }
}
