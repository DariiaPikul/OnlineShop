package com.internet.shop.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionUtil {
    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException exception) {
            throw new RuntimeException("Can't find MySQL Driver", exception);
        }
    }

    public static Connection getConnection() throws SQLException {
        Properties connectionProps = new Properties();
        connectionProps.put("user","root");
        connectionProps.put("password", "12345678");
        String url = "jdbc:mysql://localhost:3306/top_store?serverTimezone=UTC";
        try {
            return DriverManager.getConnection(url, connectionProps);
        } catch (SQLException exception) {
            throw new RuntimeException(exception);
        }
    }
}