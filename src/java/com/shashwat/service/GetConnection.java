package com.shashwat.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class GetConnection {

    public static Connection getConnection() {

        Connection con = null;
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Connection success");

            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shashwat", "root", "root");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("exception occor -----------------------   "+e);
            return null;
        }
        return con;
    }

}
